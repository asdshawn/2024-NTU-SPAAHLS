set moduleName exec
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {exec}
set C_modelType { void 0 }
set C_modelArgList {
	{ inStream2 int 512 regular {fifo 0 volatile }  }
	{ outStream3 int 512 regular {fifo 1 volatile }  }
	{ numInputs int 32 regular {fifo 0}  }
	{ processDelay int 32 regular {fifo 0}  }
	{ numInputs_c int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inStream2", "interface" : "fifo", "bitwidth" : 512, "direction" : "READONLY"} , 
 	{ "Name" : "outStream3", "interface" : "fifo", "bitwidth" : 512, "direction" : "WRITEONLY"} , 
 	{ "Name" : "numInputs", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "processDelay", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "numInputs_c", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inStream2_dout sc_in sc_lv 512 signal 0 } 
	{ inStream2_num_data_valid sc_in sc_lv 2 signal 0 } 
	{ inStream2_fifo_cap sc_in sc_lv 2 signal 0 } 
	{ inStream2_empty_n sc_in sc_logic 1 signal 0 } 
	{ inStream2_read sc_out sc_logic 1 signal 0 } 
	{ outStream3_din sc_out sc_lv 512 signal 1 } 
	{ outStream3_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ outStream3_fifo_cap sc_in sc_lv 2 signal 1 } 
	{ outStream3_full_n sc_in sc_logic 1 signal 1 } 
	{ outStream3_write sc_out sc_logic 1 signal 1 } 
	{ numInputs_dout sc_in sc_lv 32 signal 2 } 
	{ numInputs_num_data_valid sc_in sc_lv 2 signal 2 } 
	{ numInputs_fifo_cap sc_in sc_lv 2 signal 2 } 
	{ numInputs_empty_n sc_in sc_logic 1 signal 2 } 
	{ numInputs_read sc_out sc_logic 1 signal 2 } 
	{ processDelay_dout sc_in sc_lv 32 signal 3 } 
	{ processDelay_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ processDelay_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ processDelay_empty_n sc_in sc_logic 1 signal 3 } 
	{ processDelay_read sc_out sc_logic 1 signal 3 } 
	{ numInputs_c_din sc_out sc_lv 32 signal 4 } 
	{ numInputs_c_num_data_valid sc_in sc_lv 2 signal 4 } 
	{ numInputs_c_fifo_cap sc_in sc_lv 2 signal 4 } 
	{ numInputs_c_full_n sc_in sc_logic 1 signal 4 } 
	{ numInputs_c_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
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
 	{ "name": "numInputs_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numInputs", "role": "dout" }} , 
 	{ "name": "numInputs_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "numInputs", "role": "num_data_valid" }} , 
 	{ "name": "numInputs_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "numInputs", "role": "fifo_cap" }} , 
 	{ "name": "numInputs_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numInputs", "role": "empty_n" }} , 
 	{ "name": "numInputs_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numInputs", "role": "read" }} , 
 	{ "name": "processDelay_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "processDelay", "role": "dout" }} , 
 	{ "name": "processDelay_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "processDelay", "role": "num_data_valid" }} , 
 	{ "name": "processDelay_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "processDelay", "role": "fifo_cap" }} , 
 	{ "name": "processDelay_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "processDelay", "role": "empty_n" }} , 
 	{ "name": "processDelay_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "processDelay", "role": "read" }} , 
 	{ "name": "numInputs_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numInputs_c", "role": "din" }} , 
 	{ "name": "numInputs_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "numInputs_c", "role": "num_data_valid" }} , 
 	{ "name": "numInputs_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "numInputs_c", "role": "fifo_cap" }} , 
 	{ "name": "numInputs_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numInputs_c", "role": "full_n" }} , 
 	{ "name": "numInputs_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "numInputs_c", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "exec",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inStream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60", "Port" : "inStream2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "outStream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60", "Port" : "outStream3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numInputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numInputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "processDelay", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "processDelay_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numInputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numInputs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60", "Parent" : "0", "Child" : ["2", "3"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60.add_512ns_512ns_512_2_1_U14", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	exec {
		inStream2 {Type I LastRead 1 FirstWrite -1}
		outStream3 {Type O LastRead -1 FirstWrite 3}
		numInputs {Type I LastRead 0 FirstWrite -1}
		processDelay {Type I LastRead 0 FirstWrite -1}
		numInputs_c {Type O LastRead -1 FirstWrite 0}}
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
]}

set Spec2ImplPortList { 
	inStream2 { ap_fifo {  { inStream2_dout fifo_port_we 0 512 }  { inStream2_num_data_valid fifo_status_num_data_valid 0 2 }  { inStream2_fifo_cap fifo_update 0 2 }  { inStream2_empty_n fifo_status 0 1 }  { inStream2_read fifo_data 1 1 } } }
	outStream3 { ap_fifo {  { outStream3_din fifo_port_we 1 512 }  { outStream3_num_data_valid fifo_status_num_data_valid 0 2 }  { outStream3_fifo_cap fifo_update 0 2 }  { outStream3_full_n fifo_status 0 1 }  { outStream3_write fifo_data 1 1 } } }
	numInputs { ap_fifo {  { numInputs_dout fifo_port_we 0 32 }  { numInputs_num_data_valid fifo_status_num_data_valid 0 2 }  { numInputs_fifo_cap fifo_update 0 2 }  { numInputs_empty_n fifo_status 0 1 }  { numInputs_read fifo_data 1 1 } } }
	processDelay { ap_fifo {  { processDelay_dout fifo_port_we 0 32 }  { processDelay_num_data_valid fifo_status_num_data_valid 0 3 }  { processDelay_fifo_cap fifo_update 0 3 }  { processDelay_empty_n fifo_status 0 1 }  { processDelay_read fifo_data 1 1 } } }
	numInputs_c { ap_fifo {  { numInputs_c_din fifo_port_we 1 32 }  { numInputs_c_num_data_valid fifo_status_num_data_valid 0 2 }  { numInputs_c_fifo_cap fifo_update 0 2 }  { numInputs_c_full_n fifo_status 0 1 }  { numInputs_c_write fifo_data 1 1 } } }
}
