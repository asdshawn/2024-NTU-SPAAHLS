// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __pass_add_512ns_512ns_512_2_1__HH__
#define __pass_add_512ns_512ns_512_2_1__HH__
#include "pass_add_512ns_512ns_512_2_1_Adder_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(pass_add_512ns_512ns_512_2_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    pass_add_512ns_512ns_512_2_1_Adder_0 pass_add_512ns_512ns_512_2_1_Adder_0_U;

    SC_CTOR(pass_add_512ns_512ns_512_2_1):  pass_add_512ns_512ns_512_2_1_Adder_0_U ("pass_add_512ns_512ns_512_2_1_Adder_0_U") {
        pass_add_512ns_512ns_512_2_1_Adder_0_U.clk(clk);
        pass_add_512ns_512ns_512_2_1_Adder_0_U.reset(reset);
        pass_add_512ns_512ns_512_2_1_Adder_0_U.ce(ce);
        pass_add_512ns_512ns_512_2_1_Adder_0_U.a(din0);
        pass_add_512ns_512ns_512_2_1_Adder_0_U.b(din1);
        pass_add_512ns_512ns_512_2_1_Adder_0_U.s(dout);

    }

};

#endif //
