#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_input_r "../tv/cdatafile/c.pass.autotvin_input_r.dat"
#define AUTOTB_TVOUT_input_r "../tv/cdatafile/c.pass.autotvout_input_r.dat"
#define AUTOTB_TVIN_output_r "../tv/cdatafile/c.pass.autotvin_output_r.dat"
#define AUTOTB_TVOUT_output_r "../tv/cdatafile/c.pass.autotvout_output_r.dat"
#define AUTOTB_TVIN_numInputs "../tv/cdatafile/c.pass.autotvin_numInputs.dat"
#define AUTOTB_TVOUT_numInputs "../tv/cdatafile/c.pass.autotvout_numInputs.dat"
#define AUTOTB_TVIN_processDelay "../tv/cdatafile/c.pass.autotvin_processDelay.dat"
#define AUTOTB_TVOUT_processDelay "../tv/cdatafile/c.pass.autotvout_processDelay.dat"
#define AUTOTB_TVIN_p0 "../tv/cdatafile/c.pass.autotvin_p0.dat"
#define AUTOTB_TVOUT_p0 "../tv/cdatafile/c.pass.autotvout_p0.dat"
#define AUTOTB_TVIN_p1 "../tv/cdatafile/c.pass.autotvin_p1.dat"
#define AUTOTB_TVOUT_p1 "../tv/cdatafile/c.pass.autotvout_p1.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_input_r "../tv/rtldatafile/rtl.pass.autotvout_input_r.dat"
#define AUTOTB_TVOUT_PC_output_r "../tv/rtldatafile/rtl.pass.autotvout_output_r.dat"
#define AUTOTB_TVOUT_PC_numInputs "../tv/rtldatafile/rtl.pass.autotvout_numInputs.dat"
#define AUTOTB_TVOUT_PC_processDelay "../tv/rtldatafile/rtl.pass.autotvout_processDelay.dat"
#define AUTOTB_TVOUT_PC_p0 "../tv/rtldatafile/rtl.pass.autotvout_p0.dat"
#define AUTOTB_TVOUT_PC_p1 "../tv/rtldatafile/rtl.pass.autotvout_p1.dat"


static const bool little_endian()
{
  int a = 1;
  return *(char*)&a == 1;
}

inline static void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    rev_endian(p, dbytes);
    vp = (p_dat) (p+dbytes);
  }

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
      if (little_endian()) {
        rev_endian(vp[i], wbytes);
      }
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};


inline static const std::string begin_str(int num)
{
  return std::string("[[transaction]]           ")
         .append(std::to_string(num))
         .append("\n");
}

inline static const std::string end_str()
{
  return std::string("[[/transaction]]\n");
}

const std::string formatData(unsigned char *pos, size_t wbits)
{
  bool LE = little_endian();
  size_t wbytes = (wbits+7)>>3;
  size_t i = LE ? wbytes-1 : 0;
  auto next = [&] () {
    auto c = pos[i];
    LE ? --i : ++i;
    return c;
  };
  std::ostringstream ss;
  ss << "0x";
  if (int t = (wbits & 0x7)) {
    if (t <= 4) {
      unsigned char mask = (1<<t)-1;
      ss << std::hex << std::setfill('0') << std::setw(1)
         << (int) (next() & mask);
      wbytes -= 1;
    }
  }
  for (size_t i = 0; i < wbytes; ++i) {
    ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
  }
  ss.put('\n');
  return ss.str();
}

static bool RTLOutputCheckAndReplacement(std::string &data)
{
  bool changed = false;
  for (size_t i = 2; i < data.size(); ++i) {
    if (data[i] == 'X' || data[i] == 'x') {
      data[i] = '0';
      changed = true;
    }
  }
  return changed;
}

struct SimException : public std::exception {
  const char *msg;
  const size_t line;
  SimException(const char *msg, const size_t line)
    : msg(msg), line(line)
  {
  }
};

template<size_t bit_width>
class PostCheck
{
  static const char *bad;
  static const char *err;
  std::fstream stream;
  std::string s;

  void send(char *p, ap_uint<bit_width> &data, size_t l, size_t rest)
  {
    if (rest == 0) {
      if (!little_endian()) {
        const size_t wbytes = (bit_width+7)>>3;
        rev_endian(p-wbytes, wbytes);
      }
    } else if (rest < 8) {
      *p = data.range(l+rest-1, l).to_uint();
      send(p+1, data, l+rest, 0);
    } else {
      *p = data.range(l+8-1, l).to_uint();
      send(p+1, data, l+8, rest-8);
    }
  }

  void readline()
  {
    std::getline(stream, s);
    if (stream.eof()) {
      throw SimException(bad, __LINE__);
    }
  }

public:
  char *param;
  size_t psize;
  size_t depth;

  PostCheck(const char *file)
  {
    stream.open(file);
    if (stream.fail()) {
      throw SimException(err, __LINE__);
    } else {
      readline();
      if (s != "[[[runtime]]]") {
        throw SimException(bad, __LINE__);
      }
    }
  }

  ~PostCheck() noexcept(false)
  {
    stream.close();
  }

  void run(size_t AESL_transaction_pc, size_t skip)
  {
    if (stream.peek() == '[') {
      readline();
    }

    for (size_t i = 0; i < skip; ++i) {
      readline();
    }

    bool foundX = false;
    for (size_t i = 0; i < depth; ++i) {
      readline();
      foundX |= RTLOutputCheckAndReplacement(s);
      ap_uint<bit_width> data(s.c_str(), 16);
      send(param+i*psize, data, 0, bit_width);
    }
    if (foundX) {
      std::cerr << "WARNING: [SIM 212-201] RTL produces unknown value "
                << "'x' or 'X' on some port, possible cause: "
                << "There are uninitialized variables in the design.\n";
    }

    if (stream.peek() == '[') {
      readline();
    }
  }
};

template<size_t bit_width>
const char* PostCheck<bit_width>::bad = "Bad TV file";

template<size_t bit_width>
const char* PostCheck<bit_width>::err = "Error on TV file";
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  input_r_depth = 0;
  output_r_depth = 0;
  numInputs_depth = 0;
  processDelay_depth = 0;
  p0_depth = 0;
  p1_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{input_r " << input_r_depth << "}\n";
  total_list << "{output_r " << output_r_depth << "}\n";
  total_list << "{numInputs " << numInputs_depth << "}\n";
  total_list << "{processDelay " << processDelay_depth << "}\n";
  total_list << "{p0 " << p0_depth << "}\n";
  total_list << "{p1 " << p1_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int input_r_depth;
    int output_r_depth;
    int numInputs_depth;
    int processDelay_depth;
    int p0_depth;
    int p1_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};


struct __cosim_s64__ { char data[64]; };
extern "C" void pass_hw_stub_wrapper(volatile void *, volatile void *, int, int);

extern "C" void apatb_pass_hw(volatile void * __xlx_apatb_param_input_r, volatile void * __xlx_apatb_param_output_r, int __xlx_apatb_param_numInputs, int __xlx_apatb_param_processDelay) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
try {
static PostCheck<512> pc(AUTOTB_TVOUT_PC_p1);
pc.psize = 64;
pc.param = (char*)__xlx_apatb_param_output_r;
pc.depth = 1;
pc.run(AESL_transaction_pc, 0);
} catch (SimException &e) {
  std::cout << "at line " << e.line << " occurred exception, " << e.msg << "\n";
}

    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_input_r = 0;
unsigned __xlx_offset_byte_param_output_r = 0;
aesl_fh.touch(AUTOTB_TVIN_p0);
{
aesl_fh.write(AUTOTB_TVIN_p0, begin_str(AESL_transaction));
__xlx_offset_byte_param_input_r = 0*64;
if (__xlx_apatb_param_input_r) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_input_r + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_p0, s);
}
}
tcl_file.set_num(1, &tcl_file.p0_depth);
aesl_fh.write(AUTOTB_TVIN_p0, end_str());
}
aesl_fh.touch(AUTOTB_TVIN_p1);
{
aesl_fh.write(AUTOTB_TVIN_p1, begin_str(AESL_transaction));
__xlx_offset_byte_param_output_r = 0*64;
if (__xlx_apatb_param_output_r) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_output_r + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVIN_p1, s);
}
}
tcl_file.set_num(1, &tcl_file.p1_depth);
aesl_fh.write(AUTOTB_TVIN_p1, end_str());
}
// print input_r Transactions
{
aesl_fh.write(AUTOTB_TVIN_input_r, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_input_r;
aesl_fh.write(AUTOTB_TVIN_input_r, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.input_r_depth);
aesl_fh.write(AUTOTB_TVIN_input_r, end_str());
}

// print output_r Transactions
{
aesl_fh.write(AUTOTB_TVIN_output_r, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_offset_byte_param_output_r;
aesl_fh.write(AUTOTB_TVIN_output_r, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.output_r_depth);
aesl_fh.write(AUTOTB_TVIN_output_r, end_str());
}

// print numInputs Transactions
{
aesl_fh.write(AUTOTB_TVIN_numInputs, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_numInputs;
aesl_fh.write(AUTOTB_TVIN_numInputs, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.numInputs_depth);
aesl_fh.write(AUTOTB_TVIN_numInputs, end_str());
}

// print processDelay Transactions
{
aesl_fh.write(AUTOTB_TVIN_processDelay, begin_str(AESL_transaction));
{
auto *pos = (unsigned char*)&__xlx_apatb_param_processDelay;
aesl_fh.write(AUTOTB_TVIN_processDelay, formatData(pos, 32));
}
  tcl_file.set_num(1, &tcl_file.processDelay_depth);
aesl_fh.write(AUTOTB_TVIN_processDelay, end_str());
}

CodeState = CALL_C_DUT;
pass_hw_stub_wrapper(__xlx_apatb_param_input_r, __xlx_apatb_param_output_r, __xlx_apatb_param_numInputs, __xlx_apatb_param_processDelay);
CodeState = DUMP_OUTPUTS;
aesl_fh.touch(AUTOTB_TVOUT_p1);
{
aesl_fh.write(AUTOTB_TVOUT_p1, begin_str(AESL_transaction));
__xlx_offset_byte_param_output_r = 0*64;
if (__xlx_apatb_param_output_r) {
for (size_t i = 0; i < 1; ++i) {
unsigned char *pos = (unsigned char*)__xlx_apatb_param_output_r + i * 64;
std::string s = formatData(pos, 512);
aesl_fh.write(AUTOTB_TVOUT_p1, s);
}
}
tcl_file.set_num(1, &tcl_file.p1_depth);
aesl_fh.write(AUTOTB_TVOUT_p1, end_str());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
