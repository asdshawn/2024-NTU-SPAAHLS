set moduleName pass_dataflow
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {pass_dataflow}
set C_modelType { void 0 }
set C_modelArgList {
	{ p0 int 512 regular {axi_master 0}  }
	{ input_r int 64 regular  }
	{ p1 int 512 regular {axi_master 1}  }
	{ output_r int 64 regular  }
	{ numInputs int 32 regular  }
	{ processDelay int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "p1", "interface" : "axi_master", "bitwidth" : 512, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "output_r","offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "numInputs", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "processDelay", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 107
set portList { 
	{ m_axi_p0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_p0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_p0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_p0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_p0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_p0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_p0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_p0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_p0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_p0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_p0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_p0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_p0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_p0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_p0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_p0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_p0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_p0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_p0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_p0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_p0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_p0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_p0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_p0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_p0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_p0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_p0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_p0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_p0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_p0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_p0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_p0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_p0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_p0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_p0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_p0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_p0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_p0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_p0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_p0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_p0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_p0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_p0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_p0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_p0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_p0_BUSER sc_in sc_lv 1 signal 0 } 
	{ input_r sc_in sc_lv 64 signal 1 } 
	{ m_axi_p1_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_p1_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_p1_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_p1_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_p1_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_p1_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_p1_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_p1_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_p1_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_p1_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_p1_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_p1_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_p1_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_p1_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_p1_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_p1_WDATA sc_out sc_lv 512 signal 2 } 
	{ m_axi_p1_WSTRB sc_out sc_lv 64 signal 2 } 
	{ m_axi_p1_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_p1_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_p1_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_p1_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_p1_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_p1_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_p1_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_p1_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_p1_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_p1_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_p1_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_p1_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_p1_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_p1_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_p1_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_p1_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_p1_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_p1_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_p1_RDATA sc_in sc_lv 512 signal 2 } 
	{ m_axi_p1_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_p1_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_p1_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_p1_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_p1_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_p1_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_p1_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_p1_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_p1_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_p1_BUSER sc_in sc_lv 1 signal 2 } 
	{ output_r sc_in sc_lv 64 signal 3 } 
	{ numInputs sc_in sc_lv 32 signal 4 } 
	{ processDelay sc_in sc_lv 32 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ output_r_ap_vld sc_in sc_logic 1 invld 3 } 
	{ processDelay_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ input_r_ap_vld sc_in sc_logic 1 invld 1 } 
	{ numInputs_ap_vld sc_in sc_logic 1 invld 4 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "m_axi_p0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_p0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_p0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_p0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "AWID" }} , 
 	{ "name": "m_axi_p0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_p0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_p0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_p0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_p0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_p0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_p0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_p0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_p0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_p0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "WVALID" }} , 
 	{ "name": "m_axi_p0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "WREADY" }} , 
 	{ "name": "m_axi_p0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p0", "role": "WDATA" }} , 
 	{ "name": "m_axi_p0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_p0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "WLAST" }} , 
 	{ "name": "m_axi_p0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "WID" }} , 
 	{ "name": "m_axi_p0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "WUSER" }} , 
 	{ "name": "m_axi_p0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_p0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_p0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_p0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "ARID" }} , 
 	{ "name": "m_axi_p0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_p0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_p0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_p0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_p0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_p0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_p0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_p0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_p0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_p0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "RVALID" }} , 
 	{ "name": "m_axi_p0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "RREADY" }} , 
 	{ "name": "m_axi_p0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p0", "role": "RDATA" }} , 
 	{ "name": "m_axi_p0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "RLAST" }} , 
 	{ "name": "m_axi_p0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "RID" }} , 
 	{ "name": "m_axi_p0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_p0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "RUSER" }} , 
 	{ "name": "m_axi_p0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "RRESP" }} , 
 	{ "name": "m_axi_p0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "BVALID" }} , 
 	{ "name": "m_axi_p0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "BREADY" }} , 
 	{ "name": "m_axi_p0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p0", "role": "BRESP" }} , 
 	{ "name": "m_axi_p0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "BID" }} , 
 	{ "name": "m_axi_p0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p0", "role": "BUSER" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "m_axi_p1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_p1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_p1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_p1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "AWID" }} , 
 	{ "name": "m_axi_p1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_p1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_p1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_p1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_p1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_p1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_p1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_p1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_p1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_p1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "WVALID" }} , 
 	{ "name": "m_axi_p1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "WREADY" }} , 
 	{ "name": "m_axi_p1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p1", "role": "WDATA" }} , 
 	{ "name": "m_axi_p1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_p1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "WLAST" }} , 
 	{ "name": "m_axi_p1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "WID" }} , 
 	{ "name": "m_axi_p1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "WUSER" }} , 
 	{ "name": "m_axi_p1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_p1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_p1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "p1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_p1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "ARID" }} , 
 	{ "name": "m_axi_p1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_p1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_p1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_p1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_p1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_p1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "p1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_p1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_p1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "p1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_p1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_p1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "RVALID" }} , 
 	{ "name": "m_axi_p1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "RREADY" }} , 
 	{ "name": "m_axi_p1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "p1", "role": "RDATA" }} , 
 	{ "name": "m_axi_p1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "RLAST" }} , 
 	{ "name": "m_axi_p1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "RID" }} , 
 	{ "name": "m_axi_p1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_p1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "RUSER" }} , 
 	{ "name": "m_axi_p1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p1", "role": "RRESP" }} , 
 	{ "name": "m_axi_p1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "BVALID" }} , 
 	{ "name": "m_axi_p1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "BREADY" }} , 
 	{ "name": "m_axi_p1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "p1", "role": "BRESP" }} , 
 	{ "name": "m_axi_p1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "BID" }} , 
 	{ "name": "m_axi_p1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "p1", "role": "BUSER" }} , 
 	{ "name": "output_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_r", "role": "default" }} , 
 	{ "name": "numInputs", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "numInputs", "role": "default" }} , 
 	{ "name": "processDelay", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "processDelay", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "output_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "output_r", "role": "ap_vld" }} , 
 	{ "name": "processDelay_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "processDelay", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "input_r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "input_r", "role": "ap_vld" }} , 
 	{ "name": "numInputs_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "numInputs", "role": "ap_vld" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "9", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "pass_dataflow",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "entry_proc_U0"},
			{"ID" : "2", "Name" : "read_U0"}],
		"OutputProcess" : [
			{"ID" : "9", "Name" : "write_U0"}],
		"Port" : [
			{"Name" : "p0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "read_U0", "Port" : "p0"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p1", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "write_U0", "Port" : "p1"}]},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "numInputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "processDelay", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.entry_proc_U0", "Parent" : "0",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "12", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "processDelay", "Type" : "None", "Direction" : "I"},
			{"Name" : "processDelay_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "13", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "processDelay_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.read_U0", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "read_r",
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
			{"Name" : "p0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_read_Pipeline_VITIS_LOOP_13_1_fu_82", "Port" : "p0", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "inStream2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_read_Pipeline_VITIS_LOOP_13_1_fu_82", "Port" : "inStream2", "Inst_start_state" : "72", "Inst_end_state" : "73"}]},
			{"Name" : "numInputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "numInputs_c9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["5"], "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numInputs_c9_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.read_U0.grp_read_Pipeline_VITIS_LOOP_13_1_fu_82", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "read_Pipeline_VITIS_LOOP_13_1",
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
			{"Name" : "p0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln13", "Type" : "None", "Direction" : "I"},
			{"Name" : "numInputs", "Type" : "None", "Direction" : "I"},
			{"Name" : "inStream2", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "inStream2_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.read_U0.grp_read_Pipeline_VITIS_LOOP_13_1_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.exec_U0", "Parent" : "0", "Child" : ["6"],
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
		"StartSource" : "1",
		"StartFifo" : "start_for_exec_U0_U",
		"Port" : [
			{"Name" : "inStream2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60", "Port" : "inStream2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "outStream3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60", "Port" : "outStream3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "numInputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["2"], "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numInputs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "processDelay", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "13", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "processDelay_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numInputs_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["9"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numInputs_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.exec_U0.grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60", "Parent" : "5", "Child" : ["7", "8"],
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
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.exec_U0.grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60.add_512ns_512ns_512_2_1_U14", "Parent" : "6"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.exec_U0.grp_exec_Pipeline_VITIS_LOOP_23_1_fu_60.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.write_U0", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "write_r",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_write_U0_U",
		"Port" : [
			{"Name" : "outStream3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_35_1_fu_73", "Port" : "outStream3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "p1_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_write_Pipeline_VITIS_LOOP_35_1_fu_73", "Port" : "p1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "output_r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["1"], "DependentChan" : "12", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "output_r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "numInputs", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["5"], "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "numInputs_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.write_U0.grp_write_Pipeline_VITIS_LOOP_35_1_fu_73", "Parent" : "9", "Child" : ["11"],
		"CDFG" : "write_Pipeline_VITIS_LOOP_35_1",
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
			{"Name" : "p1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p1_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln35", "Type" : "None", "Direction" : "I"},
			{"Name" : "numInputs_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "outStream3", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "outStream3_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_35_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.write_U0.grp_write_Pipeline_VITIS_LOOP_35_1_fu_73.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_c_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.processDelay_c_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.inStream_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numInputs_c9_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outStream_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.numInputs_c_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_exec_U0_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_write_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pass_dataflow {
		p0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		p1 {Type O LastRead 4 FirstWrite 2}
		output_r {Type I LastRead 1 FirstWrite -1}
		numInputs {Type I LastRead 0 FirstWrite -1}
		processDelay {Type I LastRead 1 FirstWrite -1}}
	entry_proc {
		output_r {Type I LastRead 0 FirstWrite -1}
		output_c {Type O LastRead -1 FirstWrite 0}
		processDelay {Type I LastRead 0 FirstWrite -1}
		processDelay_c {Type O LastRead -1 FirstWrite 0}}
	read_r {
		p0 {Type I LastRead 1 FirstWrite -1}
		input_r {Type I LastRead 1 FirstWrite -1}
		inStream2 {Type O LastRead -1 FirstWrite 2}
		numInputs {Type I LastRead 0 FirstWrite -1}
		numInputs_c9 {Type O LastRead -1 FirstWrite 0}}
	read_Pipeline_VITIS_LOOP_13_1 {
		p0 {Type I LastRead 1 FirstWrite -1}
		sext_ln13 {Type I LastRead 0 FirstWrite -1}
		numInputs {Type I LastRead 0 FirstWrite -1}
		inStream2 {Type O LastRead -1 FirstWrite 2}}
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
		outStream3 {Type O LastRead -1 FirstWrite 3}}
	write_r {
		outStream3 {Type I LastRead 1 FirstWrite -1}
		p1 {Type O LastRead 4 FirstWrite 2}
		output_r {Type I LastRead 0 FirstWrite -1}
		numInputs {Type I LastRead 0 FirstWrite -1}}
	write_Pipeline_VITIS_LOOP_35_1 {
		p1 {Type O LastRead -1 FirstWrite 2}
		sext_ln35 {Type I LastRead 0 FirstWrite -1}
		numInputs_load {Type I LastRead 0 FirstWrite -1}
		outStream3 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_p0_AWVALID VALID 1 1 }  { m_axi_p0_AWREADY READY 0 1 }  { m_axi_p0_AWADDR ADDR 1 64 }  { m_axi_p0_AWID ID 1 1 }  { m_axi_p0_AWLEN SIZE 1 32 }  { m_axi_p0_AWSIZE BURST 1 3 }  { m_axi_p0_AWBURST LOCK 1 2 }  { m_axi_p0_AWLOCK CACHE 1 2 }  { m_axi_p0_AWCACHE PROT 1 4 }  { m_axi_p0_AWPROT QOS 1 3 }  { m_axi_p0_AWQOS REGION 1 4 }  { m_axi_p0_AWREGION USER 1 4 }  { m_axi_p0_AWUSER DATA 1 1 }  { m_axi_p0_WVALID VALID 1 1 }  { m_axi_p0_WREADY READY 0 1 }  { m_axi_p0_WDATA FIFONUM 1 512 }  { m_axi_p0_WSTRB STRB 1 64 }  { m_axi_p0_WLAST LAST 1 1 }  { m_axi_p0_WID ID 1 1 }  { m_axi_p0_WUSER DATA 1 1 }  { m_axi_p0_ARVALID VALID 1 1 }  { m_axi_p0_ARREADY READY 0 1 }  { m_axi_p0_ARADDR ADDR 1 64 }  { m_axi_p0_ARID ID 1 1 }  { m_axi_p0_ARLEN SIZE 1 32 }  { m_axi_p0_ARSIZE BURST 1 3 }  { m_axi_p0_ARBURST LOCK 1 2 }  { m_axi_p0_ARLOCK CACHE 1 2 }  { m_axi_p0_ARCACHE PROT 1 4 }  { m_axi_p0_ARPROT QOS 1 3 }  { m_axi_p0_ARQOS REGION 1 4 }  { m_axi_p0_ARREGION USER 1 4 }  { m_axi_p0_ARUSER DATA 1 1 }  { m_axi_p0_RVALID VALID 0 1 }  { m_axi_p0_RREADY READY 1 1 }  { m_axi_p0_RDATA FIFONUM 0 512 }  { m_axi_p0_RLAST LAST 0 1 }  { m_axi_p0_RID ID 0 1 }  { m_axi_p0_RFIFONUM LEN 0 9 }  { m_axi_p0_RUSER DATA 0 1 }  { m_axi_p0_RRESP RESP 0 2 }  { m_axi_p0_BVALID VALID 0 1 }  { m_axi_p0_BREADY READY 1 1 }  { m_axi_p0_BRESP RESP 0 2 }  { m_axi_p0_BID ID 0 1 }  { m_axi_p0_BUSER DATA 0 1 } } }
	input_r { ap_none {  { input_r in_data 0 64 }  { input_r_ap_vld in_vld 0 1 } } }
	 { m_axi {  { m_axi_p1_AWVALID VALID 1 1 }  { m_axi_p1_AWREADY READY 0 1 }  { m_axi_p1_AWADDR ADDR 1 64 }  { m_axi_p1_AWID ID 1 1 }  { m_axi_p1_AWLEN SIZE 1 32 }  { m_axi_p1_AWSIZE BURST 1 3 }  { m_axi_p1_AWBURST LOCK 1 2 }  { m_axi_p1_AWLOCK CACHE 1 2 }  { m_axi_p1_AWCACHE PROT 1 4 }  { m_axi_p1_AWPROT QOS 1 3 }  { m_axi_p1_AWQOS REGION 1 4 }  { m_axi_p1_AWREGION USER 1 4 }  { m_axi_p1_AWUSER DATA 1 1 }  { m_axi_p1_WVALID VALID 1 1 }  { m_axi_p1_WREADY READY 0 1 }  { m_axi_p1_WDATA FIFONUM 1 512 }  { m_axi_p1_WSTRB STRB 1 64 }  { m_axi_p1_WLAST LAST 1 1 }  { m_axi_p1_WID ID 1 1 }  { m_axi_p1_WUSER DATA 1 1 }  { m_axi_p1_ARVALID VALID 1 1 }  { m_axi_p1_ARREADY READY 0 1 }  { m_axi_p1_ARADDR ADDR 1 64 }  { m_axi_p1_ARID ID 1 1 }  { m_axi_p1_ARLEN SIZE 1 32 }  { m_axi_p1_ARSIZE BURST 1 3 }  { m_axi_p1_ARBURST LOCK 1 2 }  { m_axi_p1_ARLOCK CACHE 1 2 }  { m_axi_p1_ARCACHE PROT 1 4 }  { m_axi_p1_ARPROT QOS 1 3 }  { m_axi_p1_ARQOS REGION 1 4 }  { m_axi_p1_ARREGION USER 1 4 }  { m_axi_p1_ARUSER DATA 1 1 }  { m_axi_p1_RVALID VALID 0 1 }  { m_axi_p1_RREADY READY 1 1 }  { m_axi_p1_RDATA FIFONUM 0 512 }  { m_axi_p1_RLAST LAST 0 1 }  { m_axi_p1_RID ID 0 1 }  { m_axi_p1_RFIFONUM LEN 0 9 }  { m_axi_p1_RUSER DATA 0 1 }  { m_axi_p1_RRESP RESP 0 2 }  { m_axi_p1_BVALID VALID 0 1 }  { m_axi_p1_BREADY READY 1 1 }  { m_axi_p1_BRESP RESP 0 2 }  { m_axi_p1_BID ID 0 1 }  { m_axi_p1_BUSER DATA 0 1 } } }
	output_r { ap_none {  { output_r in_data 0 64 }  { output_r_ap_vld in_vld 0 1 } } }
	numInputs { ap_none {  { numInputs in_data 0 32 }  { numInputs_ap_vld in_vld 0 1 } } }
	processDelay { ap_none {  { processDelay in_data 0 32 }  { processDelay_ap_vld in_vld 0 1 } } }
}
