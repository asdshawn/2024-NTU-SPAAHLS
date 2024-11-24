set moduleName exec_Pipeline_VITIS_LOOP_23_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {exec_Pipeline_VITIS_LOOP_23_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ numInputs_load int 32 regular  }
	{ inStream2 int 512 regular {fifo 0 volatile }  }
	{ zext_ln25 int 33 regular  }
	{ cmp29 int 1 regular  }
	{ outStream3 int 512 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "numInputs_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "inStream2", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln25", "interface" : "wire", "bitwidth" : 33, "direction" : "READONLY"} , 
 	{ "Name" : "cmp29", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "outStream3", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inStream2_dout sc_in sc_lv 512 signal 1 } 
	{ inStream2_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ inStream2_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ inStream2_empty_n sc_in sc_logic 1 signal 1 } 
	{ inStream2_read sc_out sc_logic 1 signal 1 } 
	{ outStream3_din sc_out sc_lv 512 signal 4 } 
	{ outStream3_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ outStream3_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ outStream3_full_n sc_in sc_logic 1 signal 4 } 
	{ outStream3_write sc_out sc_logic 1 signal 4 } 
	{ numInputs_load sc_in sc_lv 32 signal 0 } 
	{ zext_ln25 sc_in sc_lv 33 signal 2 } 
	{ cmp29 sc_in sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inStream2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "inStream2", "role": "dout" }} , 
 	{ "name": "inStream2_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream2", "role": "num_data_valid" }} , 
 	{ "name": "inStream2_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "inStream2", "role": "fifo_cap" }} , 
 	{ "name": "inStream2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream2", "role": "empty_n" }} , 
 	{ "name": "inStream2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inStream2", "role": "read" }} , 
 	{ "name": "outStream3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "outStream3", "role": "din" }} , 
 	{ "name": "outStream3_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream3", "role": "num_data_valid" }} , 
 	{ "name": "outStream3_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "outStream3", "role": "fifo_cap" }} , 
 	{ "name": "outStream3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream3", "role": "full_n" }} , 
 	{ "name": "outStream3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outStream3", "role": "write" }} , 
 	{ "name": "numInputs_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numInputs_load", "role": "default" }} , 
 	{ "name": "zext_ln25", "direction": "in", "datatype": "sc_lv", "bitwidth":33, "type": "signal", "bundle":{"name": "zext_ln25", "role": "default" }} , 
 	{ "name": "cmp29", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp29", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "exec_Pipeline_VITIS_LOOP_23_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "numInputs_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "inStream2", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "inStream2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln25", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp29", "Type" : "None", "Direction" : "I"},
			{"Name" : "outStream3", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "outStream3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_23_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.add_512ns_512ns_512_2_1_U14", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	exec_Pipeline_VITIS_LOOP_23_1 {
		numInputs_load {Type I LastRead 0 FirstWrite -1}
		inStream2 {Type I LastRead 1 FirstWrite -1}
		zext_ln25 {Type I LastRead 0 FirstWrite -1}
		cmp29 {Type I LastRead 0 FirstWrite -1}
		outStream3 {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	numInputs_load { ap_none {  { numInputs_load in_data 0 32 } } }
	inStream2 { ap_fifo {  { inStream2_dout fifo_port_we 0 512 }  { inStream2_num_data_valid fifo_status_num_data_valid 0 2 }  { inStream2_fifo_cap fifo_update 0 2 }  { inStream2_empty_n fifo_status 0 1 }  { inStream2_read fifo_data 1 1 } } }
	zext_ln25 { ap_none {  { zext_ln25 in_data 0 33 } } }
	cmp29 { ap_none {  { cmp29 in_data 0 1 } } }
	outStream3 { ap_fifo {  { outStream3_din fifo_port_we 1 512 }  { outStream3_num_data_valid fifo_status_num_data_valid 0 2 }  { outStream3_fifo_cap fifo_update 0 2 }  { outStream3_full_n fifo_status 0 1 }  { outStream3_write fifo_data 1 1 } } }
}
