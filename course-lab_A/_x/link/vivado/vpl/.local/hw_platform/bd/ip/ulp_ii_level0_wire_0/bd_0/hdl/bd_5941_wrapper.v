//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_5941_wrapper.bd
//Design : bd_5941_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_5941_wrapper
   (BLP_S_AXI_CTRL_MGMT_00_araddr,
    BLP_S_AXI_CTRL_MGMT_00_arprot,
    BLP_S_AXI_CTRL_MGMT_00_arready,
    BLP_S_AXI_CTRL_MGMT_00_arvalid,
    BLP_S_AXI_CTRL_MGMT_00_awaddr,
    BLP_S_AXI_CTRL_MGMT_00_awprot,
    BLP_S_AXI_CTRL_MGMT_00_awready,
    BLP_S_AXI_CTRL_MGMT_00_awvalid,
    BLP_S_AXI_CTRL_MGMT_00_bready,
    BLP_S_AXI_CTRL_MGMT_00_bresp,
    BLP_S_AXI_CTRL_MGMT_00_bvalid,
    BLP_S_AXI_CTRL_MGMT_00_rdata,
    BLP_S_AXI_CTRL_MGMT_00_rready,
    BLP_S_AXI_CTRL_MGMT_00_rresp,
    BLP_S_AXI_CTRL_MGMT_00_rvalid,
    BLP_S_AXI_CTRL_MGMT_00_wdata,
    BLP_S_AXI_CTRL_MGMT_00_wready,
    BLP_S_AXI_CTRL_MGMT_00_wstrb,
    BLP_S_AXI_CTRL_MGMT_00_wvalid,
    BLP_S_AXI_CTRL_MGMT_01_araddr,
    BLP_S_AXI_CTRL_MGMT_01_arprot,
    BLP_S_AXI_CTRL_MGMT_01_arready,
    BLP_S_AXI_CTRL_MGMT_01_arvalid,
    BLP_S_AXI_CTRL_MGMT_01_awaddr,
    BLP_S_AXI_CTRL_MGMT_01_awprot,
    BLP_S_AXI_CTRL_MGMT_01_awready,
    BLP_S_AXI_CTRL_MGMT_01_awvalid,
    BLP_S_AXI_CTRL_MGMT_01_bready,
    BLP_S_AXI_CTRL_MGMT_01_bresp,
    BLP_S_AXI_CTRL_MGMT_01_bvalid,
    BLP_S_AXI_CTRL_MGMT_01_rdata,
    BLP_S_AXI_CTRL_MGMT_01_rready,
    BLP_S_AXI_CTRL_MGMT_01_rresp,
    BLP_S_AXI_CTRL_MGMT_01_rvalid,
    BLP_S_AXI_CTRL_MGMT_01_wdata,
    BLP_S_AXI_CTRL_MGMT_01_wready,
    BLP_S_AXI_CTRL_MGMT_01_wstrb,
    BLP_S_AXI_CTRL_MGMT_01_wvalid,
    BLP_S_AXI_CTRL_USER_00_araddr,
    BLP_S_AXI_CTRL_USER_00_arprot,
    BLP_S_AXI_CTRL_USER_00_arready,
    BLP_S_AXI_CTRL_USER_00_arvalid,
    BLP_S_AXI_CTRL_USER_00_awaddr,
    BLP_S_AXI_CTRL_USER_00_awprot,
    BLP_S_AXI_CTRL_USER_00_awready,
    BLP_S_AXI_CTRL_USER_00_awvalid,
    BLP_S_AXI_CTRL_USER_00_bready,
    BLP_S_AXI_CTRL_USER_00_bresp,
    BLP_S_AXI_CTRL_USER_00_bvalid,
    BLP_S_AXI_CTRL_USER_00_rdata,
    BLP_S_AXI_CTRL_USER_00_rready,
    BLP_S_AXI_CTRL_USER_00_rresp,
    BLP_S_AXI_CTRL_USER_00_rvalid,
    BLP_S_AXI_CTRL_USER_00_wdata,
    BLP_S_AXI_CTRL_USER_00_wready,
    BLP_S_AXI_CTRL_USER_00_wstrb,
    BLP_S_AXI_CTRL_USER_00_wvalid,
    BLP_S_AXI_CTRL_USER_01_araddr,
    BLP_S_AXI_CTRL_USER_01_arprot,
    BLP_S_AXI_CTRL_USER_01_arready,
    BLP_S_AXI_CTRL_USER_01_arvalid,
    BLP_S_AXI_CTRL_USER_01_awaddr,
    BLP_S_AXI_CTRL_USER_01_awprot,
    BLP_S_AXI_CTRL_USER_01_awready,
    BLP_S_AXI_CTRL_USER_01_awvalid,
    BLP_S_AXI_CTRL_USER_01_bready,
    BLP_S_AXI_CTRL_USER_01_bresp,
    BLP_S_AXI_CTRL_USER_01_bvalid,
    BLP_S_AXI_CTRL_USER_01_rdata,
    BLP_S_AXI_CTRL_USER_01_rready,
    BLP_S_AXI_CTRL_USER_01_rresp,
    BLP_S_AXI_CTRL_USER_01_rvalid,
    BLP_S_AXI_CTRL_USER_01_wdata,
    BLP_S_AXI_CTRL_USER_01_wready,
    BLP_S_AXI_CTRL_USER_01_wstrb,
    BLP_S_AXI_CTRL_USER_01_wvalid,
    BLP_S_AXI_CTRL_USER_02_araddr,
    BLP_S_AXI_CTRL_USER_02_arprot,
    BLP_S_AXI_CTRL_USER_02_arready,
    BLP_S_AXI_CTRL_USER_02_arvalid,
    BLP_S_AXI_CTRL_USER_02_awaddr,
    BLP_S_AXI_CTRL_USER_02_awprot,
    BLP_S_AXI_CTRL_USER_02_awready,
    BLP_S_AXI_CTRL_USER_02_awvalid,
    BLP_S_AXI_CTRL_USER_02_bready,
    BLP_S_AXI_CTRL_USER_02_bresp,
    BLP_S_AXI_CTRL_USER_02_bvalid,
    BLP_S_AXI_CTRL_USER_02_rdata,
    BLP_S_AXI_CTRL_USER_02_rready,
    BLP_S_AXI_CTRL_USER_02_rresp,
    BLP_S_AXI_CTRL_USER_02_rvalid,
    BLP_S_AXI_CTRL_USER_02_wdata,
    BLP_S_AXI_CTRL_USER_02_wready,
    BLP_S_AXI_CTRL_USER_02_wstrb,
    BLP_S_AXI_CTRL_USER_02_wvalid,
    BLP_S_AXI_DATA_H2C_00_araddr,
    BLP_S_AXI_DATA_H2C_00_arburst,
    BLP_S_AXI_DATA_H2C_00_arcache,
    BLP_S_AXI_DATA_H2C_00_arid,
    BLP_S_AXI_DATA_H2C_00_arlen,
    BLP_S_AXI_DATA_H2C_00_arlock,
    BLP_S_AXI_DATA_H2C_00_arprot,
    BLP_S_AXI_DATA_H2C_00_arready,
    BLP_S_AXI_DATA_H2C_00_arvalid,
    BLP_S_AXI_DATA_H2C_00_awaddr,
    BLP_S_AXI_DATA_H2C_00_awburst,
    BLP_S_AXI_DATA_H2C_00_awcache,
    BLP_S_AXI_DATA_H2C_00_awid,
    BLP_S_AXI_DATA_H2C_00_awlen,
    BLP_S_AXI_DATA_H2C_00_awlock,
    BLP_S_AXI_DATA_H2C_00_awprot,
    BLP_S_AXI_DATA_H2C_00_awready,
    BLP_S_AXI_DATA_H2C_00_awvalid,
    BLP_S_AXI_DATA_H2C_00_bid,
    BLP_S_AXI_DATA_H2C_00_bready,
    BLP_S_AXI_DATA_H2C_00_bresp,
    BLP_S_AXI_DATA_H2C_00_bvalid,
    BLP_S_AXI_DATA_H2C_00_rdata,
    BLP_S_AXI_DATA_H2C_00_rid,
    BLP_S_AXI_DATA_H2C_00_rlast,
    BLP_S_AXI_DATA_H2C_00_rready,
    BLP_S_AXI_DATA_H2C_00_rresp,
    BLP_S_AXI_DATA_H2C_00_rvalid,
    BLP_S_AXI_DATA_H2C_00_wdata,
    BLP_S_AXI_DATA_H2C_00_wlast,
    BLP_S_AXI_DATA_H2C_00_wready,
    BLP_S_AXI_DATA_H2C_00_wstrb,
    BLP_S_AXI_DATA_H2C_00_wvalid,
    ULP_M_AXI_CTRL_MGMT_00_araddr,
    ULP_M_AXI_CTRL_MGMT_00_arprot,
    ULP_M_AXI_CTRL_MGMT_00_arready,
    ULP_M_AXI_CTRL_MGMT_00_arvalid,
    ULP_M_AXI_CTRL_MGMT_00_awaddr,
    ULP_M_AXI_CTRL_MGMT_00_awprot,
    ULP_M_AXI_CTRL_MGMT_00_awready,
    ULP_M_AXI_CTRL_MGMT_00_awvalid,
    ULP_M_AXI_CTRL_MGMT_00_bready,
    ULP_M_AXI_CTRL_MGMT_00_bresp,
    ULP_M_AXI_CTRL_MGMT_00_bvalid,
    ULP_M_AXI_CTRL_MGMT_00_rdata,
    ULP_M_AXI_CTRL_MGMT_00_rready,
    ULP_M_AXI_CTRL_MGMT_00_rresp,
    ULP_M_AXI_CTRL_MGMT_00_rvalid,
    ULP_M_AXI_CTRL_MGMT_00_wdata,
    ULP_M_AXI_CTRL_MGMT_00_wready,
    ULP_M_AXI_CTRL_MGMT_00_wstrb,
    ULP_M_AXI_CTRL_MGMT_00_wvalid,
    ULP_M_AXI_CTRL_MGMT_01_araddr,
    ULP_M_AXI_CTRL_MGMT_01_arprot,
    ULP_M_AXI_CTRL_MGMT_01_arready,
    ULP_M_AXI_CTRL_MGMT_01_arvalid,
    ULP_M_AXI_CTRL_MGMT_01_awaddr,
    ULP_M_AXI_CTRL_MGMT_01_awprot,
    ULP_M_AXI_CTRL_MGMT_01_awready,
    ULP_M_AXI_CTRL_MGMT_01_awvalid,
    ULP_M_AXI_CTRL_MGMT_01_bready,
    ULP_M_AXI_CTRL_MGMT_01_bresp,
    ULP_M_AXI_CTRL_MGMT_01_bvalid,
    ULP_M_AXI_CTRL_MGMT_01_rdata,
    ULP_M_AXI_CTRL_MGMT_01_rready,
    ULP_M_AXI_CTRL_MGMT_01_rresp,
    ULP_M_AXI_CTRL_MGMT_01_rvalid,
    ULP_M_AXI_CTRL_MGMT_01_wdata,
    ULP_M_AXI_CTRL_MGMT_01_wready,
    ULP_M_AXI_CTRL_MGMT_01_wstrb,
    ULP_M_AXI_CTRL_MGMT_01_wvalid,
    ULP_M_AXI_CTRL_USER_00_araddr,
    ULP_M_AXI_CTRL_USER_00_arprot,
    ULP_M_AXI_CTRL_USER_00_arready,
    ULP_M_AXI_CTRL_USER_00_arvalid,
    ULP_M_AXI_CTRL_USER_00_awaddr,
    ULP_M_AXI_CTRL_USER_00_awprot,
    ULP_M_AXI_CTRL_USER_00_awready,
    ULP_M_AXI_CTRL_USER_00_awvalid,
    ULP_M_AXI_CTRL_USER_00_bready,
    ULP_M_AXI_CTRL_USER_00_bresp,
    ULP_M_AXI_CTRL_USER_00_bvalid,
    ULP_M_AXI_CTRL_USER_00_rdata,
    ULP_M_AXI_CTRL_USER_00_rready,
    ULP_M_AXI_CTRL_USER_00_rresp,
    ULP_M_AXI_CTRL_USER_00_rvalid,
    ULP_M_AXI_CTRL_USER_00_wdata,
    ULP_M_AXI_CTRL_USER_00_wready,
    ULP_M_AXI_CTRL_USER_00_wstrb,
    ULP_M_AXI_CTRL_USER_00_wvalid,
    ULP_M_AXI_CTRL_USER_01_araddr,
    ULP_M_AXI_CTRL_USER_01_arprot,
    ULP_M_AXI_CTRL_USER_01_arready,
    ULP_M_AXI_CTRL_USER_01_arvalid,
    ULP_M_AXI_CTRL_USER_01_awaddr,
    ULP_M_AXI_CTRL_USER_01_awprot,
    ULP_M_AXI_CTRL_USER_01_awready,
    ULP_M_AXI_CTRL_USER_01_awvalid,
    ULP_M_AXI_CTRL_USER_01_bready,
    ULP_M_AXI_CTRL_USER_01_bresp,
    ULP_M_AXI_CTRL_USER_01_bvalid,
    ULP_M_AXI_CTRL_USER_01_rdata,
    ULP_M_AXI_CTRL_USER_01_rready,
    ULP_M_AXI_CTRL_USER_01_rresp,
    ULP_M_AXI_CTRL_USER_01_rvalid,
    ULP_M_AXI_CTRL_USER_01_wdata,
    ULP_M_AXI_CTRL_USER_01_wready,
    ULP_M_AXI_CTRL_USER_01_wstrb,
    ULP_M_AXI_CTRL_USER_01_wvalid,
    ULP_M_AXI_CTRL_USER_02_araddr,
    ULP_M_AXI_CTRL_USER_02_arprot,
    ULP_M_AXI_CTRL_USER_02_arready,
    ULP_M_AXI_CTRL_USER_02_arvalid,
    ULP_M_AXI_CTRL_USER_02_awaddr,
    ULP_M_AXI_CTRL_USER_02_awprot,
    ULP_M_AXI_CTRL_USER_02_awready,
    ULP_M_AXI_CTRL_USER_02_awvalid,
    ULP_M_AXI_CTRL_USER_02_bready,
    ULP_M_AXI_CTRL_USER_02_bresp,
    ULP_M_AXI_CTRL_USER_02_bvalid,
    ULP_M_AXI_CTRL_USER_02_rdata,
    ULP_M_AXI_CTRL_USER_02_rready,
    ULP_M_AXI_CTRL_USER_02_rresp,
    ULP_M_AXI_CTRL_USER_02_rvalid,
    ULP_M_AXI_CTRL_USER_02_wdata,
    ULP_M_AXI_CTRL_USER_02_wready,
    ULP_M_AXI_CTRL_USER_02_wstrb,
    ULP_M_AXI_CTRL_USER_02_wvalid,
    ULP_M_AXI_DATA_H2C_00_araddr,
    ULP_M_AXI_DATA_H2C_00_arburst,
    ULP_M_AXI_DATA_H2C_00_arcache,
    ULP_M_AXI_DATA_H2C_00_arid,
    ULP_M_AXI_DATA_H2C_00_arlen,
    ULP_M_AXI_DATA_H2C_00_arlock,
    ULP_M_AXI_DATA_H2C_00_arprot,
    ULP_M_AXI_DATA_H2C_00_arready,
    ULP_M_AXI_DATA_H2C_00_arvalid,
    ULP_M_AXI_DATA_H2C_00_awaddr,
    ULP_M_AXI_DATA_H2C_00_awburst,
    ULP_M_AXI_DATA_H2C_00_awcache,
    ULP_M_AXI_DATA_H2C_00_awid,
    ULP_M_AXI_DATA_H2C_00_awlen,
    ULP_M_AXI_DATA_H2C_00_awlock,
    ULP_M_AXI_DATA_H2C_00_awprot,
    ULP_M_AXI_DATA_H2C_00_awready,
    ULP_M_AXI_DATA_H2C_00_awvalid,
    ULP_M_AXI_DATA_H2C_00_bid,
    ULP_M_AXI_DATA_H2C_00_bready,
    ULP_M_AXI_DATA_H2C_00_bresp,
    ULP_M_AXI_DATA_H2C_00_bvalid,
    ULP_M_AXI_DATA_H2C_00_rdata,
    ULP_M_AXI_DATA_H2C_00_rid,
    ULP_M_AXI_DATA_H2C_00_rlast,
    ULP_M_AXI_DATA_H2C_00_rready,
    ULP_M_AXI_DATA_H2C_00_rresp,
    ULP_M_AXI_DATA_H2C_00_rvalid,
    ULP_M_AXI_DATA_H2C_00_wdata,
    ULP_M_AXI_DATA_H2C_00_wlast,
    ULP_M_AXI_DATA_H2C_00_wready,
    ULP_M_AXI_DATA_H2C_00_wstrb,
    ULP_M_AXI_DATA_H2C_00_wvalid,
    blp_m_data_hbm_temp_00,
    blp_m_data_hbm_temp_01,
    blp_m_data_memory_calib_complete_00,
    blp_m_irq_cu_00,
    blp_m_irq_hbm_cattrip_00,
    blp_s_aclk_ctrl_00,
    blp_s_aclk_freerun_ref_00,
    blp_s_aclk_pcie_00,
    blp_s_aresetn_ctrl_00,
    blp_s_aresetn_pcie_00,
    blp_s_data_satellite_ctrl_data_00,
    ulp_m_aclk_ctrl_00,
    ulp_m_aclk_freerun_ref_00,
    ulp_m_aclk_pcie_00,
    ulp_m_aresetn_ctrl_00,
    ulp_m_aresetn_pcie_00,
    ulp_m_data_satellite_ctrl_data_00,
    ulp_s_data_hbm_temp_00,
    ulp_s_data_hbm_temp_01,
    ulp_s_data_memory_calib_complete_00,
    ulp_s_irq_cu_00,
    ulp_s_irq_hbm_cattrip_00);
  input [24:0]BLP_S_AXI_CTRL_MGMT_00_araddr;
  input [2:0]BLP_S_AXI_CTRL_MGMT_00_arprot;
  output BLP_S_AXI_CTRL_MGMT_00_arready;
  input BLP_S_AXI_CTRL_MGMT_00_arvalid;
  input [24:0]BLP_S_AXI_CTRL_MGMT_00_awaddr;
  input [2:0]BLP_S_AXI_CTRL_MGMT_00_awprot;
  output BLP_S_AXI_CTRL_MGMT_00_awready;
  input BLP_S_AXI_CTRL_MGMT_00_awvalid;
  input BLP_S_AXI_CTRL_MGMT_00_bready;
  output [1:0]BLP_S_AXI_CTRL_MGMT_00_bresp;
  output BLP_S_AXI_CTRL_MGMT_00_bvalid;
  output [31:0]BLP_S_AXI_CTRL_MGMT_00_rdata;
  input BLP_S_AXI_CTRL_MGMT_00_rready;
  output [1:0]BLP_S_AXI_CTRL_MGMT_00_rresp;
  output BLP_S_AXI_CTRL_MGMT_00_rvalid;
  input [31:0]BLP_S_AXI_CTRL_MGMT_00_wdata;
  output BLP_S_AXI_CTRL_MGMT_00_wready;
  input [3:0]BLP_S_AXI_CTRL_MGMT_00_wstrb;
  input BLP_S_AXI_CTRL_MGMT_00_wvalid;
  input [24:0]BLP_S_AXI_CTRL_MGMT_01_araddr;
  input [2:0]BLP_S_AXI_CTRL_MGMT_01_arprot;
  output BLP_S_AXI_CTRL_MGMT_01_arready;
  input BLP_S_AXI_CTRL_MGMT_01_arvalid;
  input [24:0]BLP_S_AXI_CTRL_MGMT_01_awaddr;
  input [2:0]BLP_S_AXI_CTRL_MGMT_01_awprot;
  output BLP_S_AXI_CTRL_MGMT_01_awready;
  input BLP_S_AXI_CTRL_MGMT_01_awvalid;
  input BLP_S_AXI_CTRL_MGMT_01_bready;
  output [1:0]BLP_S_AXI_CTRL_MGMT_01_bresp;
  output BLP_S_AXI_CTRL_MGMT_01_bvalid;
  output [31:0]BLP_S_AXI_CTRL_MGMT_01_rdata;
  input BLP_S_AXI_CTRL_MGMT_01_rready;
  output [1:0]BLP_S_AXI_CTRL_MGMT_01_rresp;
  output BLP_S_AXI_CTRL_MGMT_01_rvalid;
  input [31:0]BLP_S_AXI_CTRL_MGMT_01_wdata;
  output BLP_S_AXI_CTRL_MGMT_01_wready;
  input [3:0]BLP_S_AXI_CTRL_MGMT_01_wstrb;
  input BLP_S_AXI_CTRL_MGMT_01_wvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  output BLP_S_AXI_CTRL_USER_00_arready;
  input BLP_S_AXI_CTRL_USER_00_arvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  output BLP_S_AXI_CTRL_USER_00_awready;
  input BLP_S_AXI_CTRL_USER_00_awvalid;
  input BLP_S_AXI_CTRL_USER_00_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  output BLP_S_AXI_CTRL_USER_00_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  input BLP_S_AXI_CTRL_USER_00_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  output BLP_S_AXI_CTRL_USER_00_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  output BLP_S_AXI_CTRL_USER_00_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  input BLP_S_AXI_CTRL_USER_00_wvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  output BLP_S_AXI_CTRL_USER_01_arready;
  input BLP_S_AXI_CTRL_USER_01_arvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  output BLP_S_AXI_CTRL_USER_01_awready;
  input BLP_S_AXI_CTRL_USER_01_awvalid;
  input BLP_S_AXI_CTRL_USER_01_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  output BLP_S_AXI_CTRL_USER_01_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  input BLP_S_AXI_CTRL_USER_01_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  output BLP_S_AXI_CTRL_USER_01_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  output BLP_S_AXI_CTRL_USER_01_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  input BLP_S_AXI_CTRL_USER_01_wvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_02_araddr;
  input [2:0]BLP_S_AXI_CTRL_USER_02_arprot;
  output BLP_S_AXI_CTRL_USER_02_arready;
  input BLP_S_AXI_CTRL_USER_02_arvalid;
  input [24:0]BLP_S_AXI_CTRL_USER_02_awaddr;
  input [2:0]BLP_S_AXI_CTRL_USER_02_awprot;
  output BLP_S_AXI_CTRL_USER_02_awready;
  input BLP_S_AXI_CTRL_USER_02_awvalid;
  input BLP_S_AXI_CTRL_USER_02_bready;
  output [1:0]BLP_S_AXI_CTRL_USER_02_bresp;
  output BLP_S_AXI_CTRL_USER_02_bvalid;
  output [31:0]BLP_S_AXI_CTRL_USER_02_rdata;
  input BLP_S_AXI_CTRL_USER_02_rready;
  output [1:0]BLP_S_AXI_CTRL_USER_02_rresp;
  output BLP_S_AXI_CTRL_USER_02_rvalid;
  input [31:0]BLP_S_AXI_CTRL_USER_02_wdata;
  output BLP_S_AXI_CTRL_USER_02_wready;
  input [3:0]BLP_S_AXI_CTRL_USER_02_wstrb;
  input BLP_S_AXI_CTRL_USER_02_wvalid;
  input [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  input [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  input [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  input [1:0]BLP_S_AXI_DATA_H2C_00_arid;
  input [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  input [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  input [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  output BLP_S_AXI_DATA_H2C_00_arready;
  input BLP_S_AXI_DATA_H2C_00_arvalid;
  input [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  input [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  input [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  input [1:0]BLP_S_AXI_DATA_H2C_00_awid;
  input [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  input [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  input [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  output BLP_S_AXI_DATA_H2C_00_awready;
  input BLP_S_AXI_DATA_H2C_00_awvalid;
  output [1:0]BLP_S_AXI_DATA_H2C_00_bid;
  input BLP_S_AXI_DATA_H2C_00_bready;
  output [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  output BLP_S_AXI_DATA_H2C_00_bvalid;
  output [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  output [1:0]BLP_S_AXI_DATA_H2C_00_rid;
  output BLP_S_AXI_DATA_H2C_00_rlast;
  input BLP_S_AXI_DATA_H2C_00_rready;
  output [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  output BLP_S_AXI_DATA_H2C_00_rvalid;
  input [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  input BLP_S_AXI_DATA_H2C_00_wlast;
  output BLP_S_AXI_DATA_H2C_00_wready;
  input [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  input BLP_S_AXI_DATA_H2C_00_wvalid;
  output [24:0]ULP_M_AXI_CTRL_MGMT_00_araddr;
  output [2:0]ULP_M_AXI_CTRL_MGMT_00_arprot;
  input ULP_M_AXI_CTRL_MGMT_00_arready;
  output ULP_M_AXI_CTRL_MGMT_00_arvalid;
  output [24:0]ULP_M_AXI_CTRL_MGMT_00_awaddr;
  output [2:0]ULP_M_AXI_CTRL_MGMT_00_awprot;
  input ULP_M_AXI_CTRL_MGMT_00_awready;
  output ULP_M_AXI_CTRL_MGMT_00_awvalid;
  output ULP_M_AXI_CTRL_MGMT_00_bready;
  input [1:0]ULP_M_AXI_CTRL_MGMT_00_bresp;
  input ULP_M_AXI_CTRL_MGMT_00_bvalid;
  input [31:0]ULP_M_AXI_CTRL_MGMT_00_rdata;
  output ULP_M_AXI_CTRL_MGMT_00_rready;
  input [1:0]ULP_M_AXI_CTRL_MGMT_00_rresp;
  input ULP_M_AXI_CTRL_MGMT_00_rvalid;
  output [31:0]ULP_M_AXI_CTRL_MGMT_00_wdata;
  input ULP_M_AXI_CTRL_MGMT_00_wready;
  output [3:0]ULP_M_AXI_CTRL_MGMT_00_wstrb;
  output ULP_M_AXI_CTRL_MGMT_00_wvalid;
  output [24:0]ULP_M_AXI_CTRL_MGMT_01_araddr;
  output [2:0]ULP_M_AXI_CTRL_MGMT_01_arprot;
  input ULP_M_AXI_CTRL_MGMT_01_arready;
  output ULP_M_AXI_CTRL_MGMT_01_arvalid;
  output [24:0]ULP_M_AXI_CTRL_MGMT_01_awaddr;
  output [2:0]ULP_M_AXI_CTRL_MGMT_01_awprot;
  input ULP_M_AXI_CTRL_MGMT_01_awready;
  output ULP_M_AXI_CTRL_MGMT_01_awvalid;
  output ULP_M_AXI_CTRL_MGMT_01_bready;
  input [1:0]ULP_M_AXI_CTRL_MGMT_01_bresp;
  input ULP_M_AXI_CTRL_MGMT_01_bvalid;
  input [31:0]ULP_M_AXI_CTRL_MGMT_01_rdata;
  output ULP_M_AXI_CTRL_MGMT_01_rready;
  input [1:0]ULP_M_AXI_CTRL_MGMT_01_rresp;
  input ULP_M_AXI_CTRL_MGMT_01_rvalid;
  output [31:0]ULP_M_AXI_CTRL_MGMT_01_wdata;
  input ULP_M_AXI_CTRL_MGMT_01_wready;
  output [3:0]ULP_M_AXI_CTRL_MGMT_01_wstrb;
  output ULP_M_AXI_CTRL_MGMT_01_wvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  output [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  input ULP_M_AXI_CTRL_USER_00_arready;
  output ULP_M_AXI_CTRL_USER_00_arvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  output [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  input ULP_M_AXI_CTRL_USER_00_awready;
  output ULP_M_AXI_CTRL_USER_00_awvalid;
  output ULP_M_AXI_CTRL_USER_00_bready;
  input [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  input ULP_M_AXI_CTRL_USER_00_bvalid;
  input [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  output ULP_M_AXI_CTRL_USER_00_rready;
  input [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  input ULP_M_AXI_CTRL_USER_00_rvalid;
  output [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  input ULP_M_AXI_CTRL_USER_00_wready;
  output [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  output ULP_M_AXI_CTRL_USER_00_wvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_01_araddr;
  output [2:0]ULP_M_AXI_CTRL_USER_01_arprot;
  input ULP_M_AXI_CTRL_USER_01_arready;
  output ULP_M_AXI_CTRL_USER_01_arvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_01_awaddr;
  output [2:0]ULP_M_AXI_CTRL_USER_01_awprot;
  input ULP_M_AXI_CTRL_USER_01_awready;
  output ULP_M_AXI_CTRL_USER_01_awvalid;
  output ULP_M_AXI_CTRL_USER_01_bready;
  input [1:0]ULP_M_AXI_CTRL_USER_01_bresp;
  input ULP_M_AXI_CTRL_USER_01_bvalid;
  input [31:0]ULP_M_AXI_CTRL_USER_01_rdata;
  output ULP_M_AXI_CTRL_USER_01_rready;
  input [1:0]ULP_M_AXI_CTRL_USER_01_rresp;
  input ULP_M_AXI_CTRL_USER_01_rvalid;
  output [31:0]ULP_M_AXI_CTRL_USER_01_wdata;
  input ULP_M_AXI_CTRL_USER_01_wready;
  output [3:0]ULP_M_AXI_CTRL_USER_01_wstrb;
  output ULP_M_AXI_CTRL_USER_01_wvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_02_araddr;
  output [2:0]ULP_M_AXI_CTRL_USER_02_arprot;
  input ULP_M_AXI_CTRL_USER_02_arready;
  output ULP_M_AXI_CTRL_USER_02_arvalid;
  output [24:0]ULP_M_AXI_CTRL_USER_02_awaddr;
  output [2:0]ULP_M_AXI_CTRL_USER_02_awprot;
  input ULP_M_AXI_CTRL_USER_02_awready;
  output ULP_M_AXI_CTRL_USER_02_awvalid;
  output ULP_M_AXI_CTRL_USER_02_bready;
  input [1:0]ULP_M_AXI_CTRL_USER_02_bresp;
  input ULP_M_AXI_CTRL_USER_02_bvalid;
  input [31:0]ULP_M_AXI_CTRL_USER_02_rdata;
  output ULP_M_AXI_CTRL_USER_02_rready;
  input [1:0]ULP_M_AXI_CTRL_USER_02_rresp;
  input ULP_M_AXI_CTRL_USER_02_rvalid;
  output [31:0]ULP_M_AXI_CTRL_USER_02_wdata;
  input ULP_M_AXI_CTRL_USER_02_wready;
  output [3:0]ULP_M_AXI_CTRL_USER_02_wstrb;
  output ULP_M_AXI_CTRL_USER_02_wvalid;
  output [38:0]ULP_M_AXI_DATA_H2C_00_araddr;
  output [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  output [3:0]ULP_M_AXI_DATA_H2C_00_arcache;
  output [1:0]ULP_M_AXI_DATA_H2C_00_arid;
  output [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  output [0:0]ULP_M_AXI_DATA_H2C_00_arlock;
  output [2:0]ULP_M_AXI_DATA_H2C_00_arprot;
  input ULP_M_AXI_DATA_H2C_00_arready;
  output ULP_M_AXI_DATA_H2C_00_arvalid;
  output [38:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  output [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  output [3:0]ULP_M_AXI_DATA_H2C_00_awcache;
  output [1:0]ULP_M_AXI_DATA_H2C_00_awid;
  output [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  output [0:0]ULP_M_AXI_DATA_H2C_00_awlock;
  output [2:0]ULP_M_AXI_DATA_H2C_00_awprot;
  input ULP_M_AXI_DATA_H2C_00_awready;
  output ULP_M_AXI_DATA_H2C_00_awvalid;
  input [1:0]ULP_M_AXI_DATA_H2C_00_bid;
  output ULP_M_AXI_DATA_H2C_00_bready;
  input [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  input ULP_M_AXI_DATA_H2C_00_bvalid;
  input [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  input [1:0]ULP_M_AXI_DATA_H2C_00_rid;
  input ULP_M_AXI_DATA_H2C_00_rlast;
  output ULP_M_AXI_DATA_H2C_00_rready;
  input [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  input ULP_M_AXI_DATA_H2C_00_rvalid;
  output [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  output ULP_M_AXI_DATA_H2C_00_wlast;
  input ULP_M_AXI_DATA_H2C_00_wready;
  output [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  output ULP_M_AXI_DATA_H2C_00_wvalid;
  output [6:0]blp_m_data_hbm_temp_00;
  output [6:0]blp_m_data_hbm_temp_01;
  output [0:0]blp_m_data_memory_calib_complete_00;
  output [127:0]blp_m_irq_cu_00;
  output [0:0]blp_m_irq_hbm_cattrip_00;
  input blp_s_aclk_ctrl_00;
  input blp_s_aclk_freerun_ref_00;
  input blp_s_aclk_pcie_00;
  input [0:0]blp_s_aresetn_ctrl_00;
  input [0:0]blp_s_aresetn_pcie_00;
  input [1:0]blp_s_data_satellite_ctrl_data_00;
  output ulp_m_aclk_ctrl_00;
  output ulp_m_aclk_freerun_ref_00;
  output ulp_m_aclk_pcie_00;
  output [0:0]ulp_m_aresetn_ctrl_00;
  output [0:0]ulp_m_aresetn_pcie_00;
  output [1:0]ulp_m_data_satellite_ctrl_data_00;
  input [6:0]ulp_s_data_hbm_temp_00;
  input [6:0]ulp_s_data_hbm_temp_01;
  input [0:0]ulp_s_data_memory_calib_complete_00;
  input [127:0]ulp_s_irq_cu_00;
  input [0:0]ulp_s_irq_hbm_cattrip_00;

  wire [24:0]BLP_S_AXI_CTRL_MGMT_00_araddr;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_00_arprot;
  wire BLP_S_AXI_CTRL_MGMT_00_arready;
  wire BLP_S_AXI_CTRL_MGMT_00_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_MGMT_00_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_00_awprot;
  wire BLP_S_AXI_CTRL_MGMT_00_awready;
  wire BLP_S_AXI_CTRL_MGMT_00_awvalid;
  wire BLP_S_AXI_CTRL_MGMT_00_bready;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_00_bresp;
  wire BLP_S_AXI_CTRL_MGMT_00_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_00_rdata;
  wire BLP_S_AXI_CTRL_MGMT_00_rready;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_00_rresp;
  wire BLP_S_AXI_CTRL_MGMT_00_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_00_wdata;
  wire BLP_S_AXI_CTRL_MGMT_00_wready;
  wire [3:0]BLP_S_AXI_CTRL_MGMT_00_wstrb;
  wire BLP_S_AXI_CTRL_MGMT_00_wvalid;
  wire [24:0]BLP_S_AXI_CTRL_MGMT_01_araddr;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_01_arprot;
  wire BLP_S_AXI_CTRL_MGMT_01_arready;
  wire BLP_S_AXI_CTRL_MGMT_01_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_MGMT_01_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_MGMT_01_awprot;
  wire BLP_S_AXI_CTRL_MGMT_01_awready;
  wire BLP_S_AXI_CTRL_MGMT_01_awvalid;
  wire BLP_S_AXI_CTRL_MGMT_01_bready;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_01_bresp;
  wire BLP_S_AXI_CTRL_MGMT_01_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_01_rdata;
  wire BLP_S_AXI_CTRL_MGMT_01_rready;
  wire [1:0]BLP_S_AXI_CTRL_MGMT_01_rresp;
  wire BLP_S_AXI_CTRL_MGMT_01_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_MGMT_01_wdata;
  wire BLP_S_AXI_CTRL_MGMT_01_wready;
  wire [3:0]BLP_S_AXI_CTRL_MGMT_01_wstrb;
  wire BLP_S_AXI_CTRL_MGMT_01_wvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_arprot;
  wire BLP_S_AXI_CTRL_USER_00_arready;
  wire BLP_S_AXI_CTRL_USER_00_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_00_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_00_awprot;
  wire BLP_S_AXI_CTRL_USER_00_awready;
  wire BLP_S_AXI_CTRL_USER_00_awvalid;
  wire BLP_S_AXI_CTRL_USER_00_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_bresp;
  wire BLP_S_AXI_CTRL_USER_00_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_rdata;
  wire BLP_S_AXI_CTRL_USER_00_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_00_rresp;
  wire BLP_S_AXI_CTRL_USER_00_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_00_wdata;
  wire BLP_S_AXI_CTRL_USER_00_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_00_wstrb;
  wire BLP_S_AXI_CTRL_USER_00_wvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_arprot;
  wire BLP_S_AXI_CTRL_USER_01_arready;
  wire BLP_S_AXI_CTRL_USER_01_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_01_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_01_awprot;
  wire BLP_S_AXI_CTRL_USER_01_awready;
  wire BLP_S_AXI_CTRL_USER_01_awvalid;
  wire BLP_S_AXI_CTRL_USER_01_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_bresp;
  wire BLP_S_AXI_CTRL_USER_01_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_rdata;
  wire BLP_S_AXI_CTRL_USER_01_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_01_rresp;
  wire BLP_S_AXI_CTRL_USER_01_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_01_wdata;
  wire BLP_S_AXI_CTRL_USER_01_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_01_wstrb;
  wire BLP_S_AXI_CTRL_USER_01_wvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_araddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_arprot;
  wire BLP_S_AXI_CTRL_USER_02_arready;
  wire BLP_S_AXI_CTRL_USER_02_arvalid;
  wire [24:0]BLP_S_AXI_CTRL_USER_02_awaddr;
  wire [2:0]BLP_S_AXI_CTRL_USER_02_awprot;
  wire BLP_S_AXI_CTRL_USER_02_awready;
  wire BLP_S_AXI_CTRL_USER_02_awvalid;
  wire BLP_S_AXI_CTRL_USER_02_bready;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_bresp;
  wire BLP_S_AXI_CTRL_USER_02_bvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_rdata;
  wire BLP_S_AXI_CTRL_USER_02_rready;
  wire [1:0]BLP_S_AXI_CTRL_USER_02_rresp;
  wire BLP_S_AXI_CTRL_USER_02_rvalid;
  wire [31:0]BLP_S_AXI_CTRL_USER_02_wdata;
  wire BLP_S_AXI_CTRL_USER_02_wready;
  wire [3:0]BLP_S_AXI_CTRL_USER_02_wstrb;
  wire BLP_S_AXI_CTRL_USER_02_wvalid;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_araddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_arburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_arcache;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_arid;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_arlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_arlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_arprot;
  wire BLP_S_AXI_DATA_H2C_00_arready;
  wire BLP_S_AXI_DATA_H2C_00_arvalid;
  wire [38:0]BLP_S_AXI_DATA_H2C_00_awaddr;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_awburst;
  wire [3:0]BLP_S_AXI_DATA_H2C_00_awcache;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_awid;
  wire [7:0]BLP_S_AXI_DATA_H2C_00_awlen;
  wire [0:0]BLP_S_AXI_DATA_H2C_00_awlock;
  wire [2:0]BLP_S_AXI_DATA_H2C_00_awprot;
  wire BLP_S_AXI_DATA_H2C_00_awready;
  wire BLP_S_AXI_DATA_H2C_00_awvalid;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_bid;
  wire BLP_S_AXI_DATA_H2C_00_bready;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_bresp;
  wire BLP_S_AXI_DATA_H2C_00_bvalid;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_rdata;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_rid;
  wire BLP_S_AXI_DATA_H2C_00_rlast;
  wire BLP_S_AXI_DATA_H2C_00_rready;
  wire [1:0]BLP_S_AXI_DATA_H2C_00_rresp;
  wire BLP_S_AXI_DATA_H2C_00_rvalid;
  wire [511:0]BLP_S_AXI_DATA_H2C_00_wdata;
  wire BLP_S_AXI_DATA_H2C_00_wlast;
  wire BLP_S_AXI_DATA_H2C_00_wready;
  wire [63:0]BLP_S_AXI_DATA_H2C_00_wstrb;
  wire BLP_S_AXI_DATA_H2C_00_wvalid;
  wire [24:0]ULP_M_AXI_CTRL_MGMT_00_araddr;
  wire [2:0]ULP_M_AXI_CTRL_MGMT_00_arprot;
  wire ULP_M_AXI_CTRL_MGMT_00_arready;
  wire ULP_M_AXI_CTRL_MGMT_00_arvalid;
  wire [24:0]ULP_M_AXI_CTRL_MGMT_00_awaddr;
  wire [2:0]ULP_M_AXI_CTRL_MGMT_00_awprot;
  wire ULP_M_AXI_CTRL_MGMT_00_awready;
  wire ULP_M_AXI_CTRL_MGMT_00_awvalid;
  wire ULP_M_AXI_CTRL_MGMT_00_bready;
  wire [1:0]ULP_M_AXI_CTRL_MGMT_00_bresp;
  wire ULP_M_AXI_CTRL_MGMT_00_bvalid;
  wire [31:0]ULP_M_AXI_CTRL_MGMT_00_rdata;
  wire ULP_M_AXI_CTRL_MGMT_00_rready;
  wire [1:0]ULP_M_AXI_CTRL_MGMT_00_rresp;
  wire ULP_M_AXI_CTRL_MGMT_00_rvalid;
  wire [31:0]ULP_M_AXI_CTRL_MGMT_00_wdata;
  wire ULP_M_AXI_CTRL_MGMT_00_wready;
  wire [3:0]ULP_M_AXI_CTRL_MGMT_00_wstrb;
  wire ULP_M_AXI_CTRL_MGMT_00_wvalid;
  wire [24:0]ULP_M_AXI_CTRL_MGMT_01_araddr;
  wire [2:0]ULP_M_AXI_CTRL_MGMT_01_arprot;
  wire ULP_M_AXI_CTRL_MGMT_01_arready;
  wire ULP_M_AXI_CTRL_MGMT_01_arvalid;
  wire [24:0]ULP_M_AXI_CTRL_MGMT_01_awaddr;
  wire [2:0]ULP_M_AXI_CTRL_MGMT_01_awprot;
  wire ULP_M_AXI_CTRL_MGMT_01_awready;
  wire ULP_M_AXI_CTRL_MGMT_01_awvalid;
  wire ULP_M_AXI_CTRL_MGMT_01_bready;
  wire [1:0]ULP_M_AXI_CTRL_MGMT_01_bresp;
  wire ULP_M_AXI_CTRL_MGMT_01_bvalid;
  wire [31:0]ULP_M_AXI_CTRL_MGMT_01_rdata;
  wire ULP_M_AXI_CTRL_MGMT_01_rready;
  wire [1:0]ULP_M_AXI_CTRL_MGMT_01_rresp;
  wire ULP_M_AXI_CTRL_MGMT_01_rvalid;
  wire [31:0]ULP_M_AXI_CTRL_MGMT_01_wdata;
  wire ULP_M_AXI_CTRL_MGMT_01_wready;
  wire [3:0]ULP_M_AXI_CTRL_MGMT_01_wstrb;
  wire ULP_M_AXI_CTRL_MGMT_01_wvalid;
  wire [24:0]ULP_M_AXI_CTRL_USER_00_araddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_00_arprot;
  wire ULP_M_AXI_CTRL_USER_00_arready;
  wire ULP_M_AXI_CTRL_USER_00_arvalid;
  wire [24:0]ULP_M_AXI_CTRL_USER_00_awaddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_00_awprot;
  wire ULP_M_AXI_CTRL_USER_00_awready;
  wire ULP_M_AXI_CTRL_USER_00_awvalid;
  wire ULP_M_AXI_CTRL_USER_00_bready;
  wire [1:0]ULP_M_AXI_CTRL_USER_00_bresp;
  wire ULP_M_AXI_CTRL_USER_00_bvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_00_rdata;
  wire ULP_M_AXI_CTRL_USER_00_rready;
  wire [1:0]ULP_M_AXI_CTRL_USER_00_rresp;
  wire ULP_M_AXI_CTRL_USER_00_rvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_00_wdata;
  wire ULP_M_AXI_CTRL_USER_00_wready;
  wire [3:0]ULP_M_AXI_CTRL_USER_00_wstrb;
  wire ULP_M_AXI_CTRL_USER_00_wvalid;
  wire [24:0]ULP_M_AXI_CTRL_USER_01_araddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_01_arprot;
  wire ULP_M_AXI_CTRL_USER_01_arready;
  wire ULP_M_AXI_CTRL_USER_01_arvalid;
  wire [24:0]ULP_M_AXI_CTRL_USER_01_awaddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_01_awprot;
  wire ULP_M_AXI_CTRL_USER_01_awready;
  wire ULP_M_AXI_CTRL_USER_01_awvalid;
  wire ULP_M_AXI_CTRL_USER_01_bready;
  wire [1:0]ULP_M_AXI_CTRL_USER_01_bresp;
  wire ULP_M_AXI_CTRL_USER_01_bvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_01_rdata;
  wire ULP_M_AXI_CTRL_USER_01_rready;
  wire [1:0]ULP_M_AXI_CTRL_USER_01_rresp;
  wire ULP_M_AXI_CTRL_USER_01_rvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_01_wdata;
  wire ULP_M_AXI_CTRL_USER_01_wready;
  wire [3:0]ULP_M_AXI_CTRL_USER_01_wstrb;
  wire ULP_M_AXI_CTRL_USER_01_wvalid;
  wire [24:0]ULP_M_AXI_CTRL_USER_02_araddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_02_arprot;
  wire ULP_M_AXI_CTRL_USER_02_arready;
  wire ULP_M_AXI_CTRL_USER_02_arvalid;
  wire [24:0]ULP_M_AXI_CTRL_USER_02_awaddr;
  wire [2:0]ULP_M_AXI_CTRL_USER_02_awprot;
  wire ULP_M_AXI_CTRL_USER_02_awready;
  wire ULP_M_AXI_CTRL_USER_02_awvalid;
  wire ULP_M_AXI_CTRL_USER_02_bready;
  wire [1:0]ULP_M_AXI_CTRL_USER_02_bresp;
  wire ULP_M_AXI_CTRL_USER_02_bvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_02_rdata;
  wire ULP_M_AXI_CTRL_USER_02_rready;
  wire [1:0]ULP_M_AXI_CTRL_USER_02_rresp;
  wire ULP_M_AXI_CTRL_USER_02_rvalid;
  wire [31:0]ULP_M_AXI_CTRL_USER_02_wdata;
  wire ULP_M_AXI_CTRL_USER_02_wready;
  wire [3:0]ULP_M_AXI_CTRL_USER_02_wstrb;
  wire ULP_M_AXI_CTRL_USER_02_wvalid;
  wire [38:0]ULP_M_AXI_DATA_H2C_00_araddr;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_arburst;
  wire [3:0]ULP_M_AXI_DATA_H2C_00_arcache;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_arid;
  wire [7:0]ULP_M_AXI_DATA_H2C_00_arlen;
  wire [0:0]ULP_M_AXI_DATA_H2C_00_arlock;
  wire [2:0]ULP_M_AXI_DATA_H2C_00_arprot;
  wire ULP_M_AXI_DATA_H2C_00_arready;
  wire ULP_M_AXI_DATA_H2C_00_arvalid;
  wire [38:0]ULP_M_AXI_DATA_H2C_00_awaddr;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_awburst;
  wire [3:0]ULP_M_AXI_DATA_H2C_00_awcache;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_awid;
  wire [7:0]ULP_M_AXI_DATA_H2C_00_awlen;
  wire [0:0]ULP_M_AXI_DATA_H2C_00_awlock;
  wire [2:0]ULP_M_AXI_DATA_H2C_00_awprot;
  wire ULP_M_AXI_DATA_H2C_00_awready;
  wire ULP_M_AXI_DATA_H2C_00_awvalid;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_bid;
  wire ULP_M_AXI_DATA_H2C_00_bready;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_bresp;
  wire ULP_M_AXI_DATA_H2C_00_bvalid;
  wire [511:0]ULP_M_AXI_DATA_H2C_00_rdata;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_rid;
  wire ULP_M_AXI_DATA_H2C_00_rlast;
  wire ULP_M_AXI_DATA_H2C_00_rready;
  wire [1:0]ULP_M_AXI_DATA_H2C_00_rresp;
  wire ULP_M_AXI_DATA_H2C_00_rvalid;
  wire [511:0]ULP_M_AXI_DATA_H2C_00_wdata;
  wire ULP_M_AXI_DATA_H2C_00_wlast;
  wire ULP_M_AXI_DATA_H2C_00_wready;
  wire [63:0]ULP_M_AXI_DATA_H2C_00_wstrb;
  wire ULP_M_AXI_DATA_H2C_00_wvalid;
  wire [6:0]blp_m_data_hbm_temp_00;
  wire [6:0]blp_m_data_hbm_temp_01;
  wire [0:0]blp_m_data_memory_calib_complete_00;
  wire [127:0]blp_m_irq_cu_00;
  wire [0:0]blp_m_irq_hbm_cattrip_00;
  wire blp_s_aclk_ctrl_00;
  wire blp_s_aclk_freerun_ref_00;
  wire blp_s_aclk_pcie_00;
  wire [0:0]blp_s_aresetn_ctrl_00;
  wire [0:0]blp_s_aresetn_pcie_00;
  wire [1:0]blp_s_data_satellite_ctrl_data_00;
  wire ulp_m_aclk_ctrl_00;
  wire ulp_m_aclk_freerun_ref_00;
  wire ulp_m_aclk_pcie_00;
  wire [0:0]ulp_m_aresetn_ctrl_00;
  wire [0:0]ulp_m_aresetn_pcie_00;
  wire [1:0]ulp_m_data_satellite_ctrl_data_00;
  wire [6:0]ulp_s_data_hbm_temp_00;
  wire [6:0]ulp_s_data_hbm_temp_01;
  wire [0:0]ulp_s_data_memory_calib_complete_00;
  wire [127:0]ulp_s_irq_cu_00;
  wire [0:0]ulp_s_irq_hbm_cattrip_00;

  bd_5941 bd_5941_i
       (.BLP_S_AXI_CTRL_MGMT_00_araddr(BLP_S_AXI_CTRL_MGMT_00_araddr),
        .BLP_S_AXI_CTRL_MGMT_00_arprot(BLP_S_AXI_CTRL_MGMT_00_arprot),
        .BLP_S_AXI_CTRL_MGMT_00_arready(BLP_S_AXI_CTRL_MGMT_00_arready),
        .BLP_S_AXI_CTRL_MGMT_00_arvalid(BLP_S_AXI_CTRL_MGMT_00_arvalid),
        .BLP_S_AXI_CTRL_MGMT_00_awaddr(BLP_S_AXI_CTRL_MGMT_00_awaddr),
        .BLP_S_AXI_CTRL_MGMT_00_awprot(BLP_S_AXI_CTRL_MGMT_00_awprot),
        .BLP_S_AXI_CTRL_MGMT_00_awready(BLP_S_AXI_CTRL_MGMT_00_awready),
        .BLP_S_AXI_CTRL_MGMT_00_awvalid(BLP_S_AXI_CTRL_MGMT_00_awvalid),
        .BLP_S_AXI_CTRL_MGMT_00_bready(BLP_S_AXI_CTRL_MGMT_00_bready),
        .BLP_S_AXI_CTRL_MGMT_00_bresp(BLP_S_AXI_CTRL_MGMT_00_bresp),
        .BLP_S_AXI_CTRL_MGMT_00_bvalid(BLP_S_AXI_CTRL_MGMT_00_bvalid),
        .BLP_S_AXI_CTRL_MGMT_00_rdata(BLP_S_AXI_CTRL_MGMT_00_rdata),
        .BLP_S_AXI_CTRL_MGMT_00_rready(BLP_S_AXI_CTRL_MGMT_00_rready),
        .BLP_S_AXI_CTRL_MGMT_00_rresp(BLP_S_AXI_CTRL_MGMT_00_rresp),
        .BLP_S_AXI_CTRL_MGMT_00_rvalid(BLP_S_AXI_CTRL_MGMT_00_rvalid),
        .BLP_S_AXI_CTRL_MGMT_00_wdata(BLP_S_AXI_CTRL_MGMT_00_wdata),
        .BLP_S_AXI_CTRL_MGMT_00_wready(BLP_S_AXI_CTRL_MGMT_00_wready),
        .BLP_S_AXI_CTRL_MGMT_00_wstrb(BLP_S_AXI_CTRL_MGMT_00_wstrb),
        .BLP_S_AXI_CTRL_MGMT_00_wvalid(BLP_S_AXI_CTRL_MGMT_00_wvalid),
        .BLP_S_AXI_CTRL_MGMT_01_araddr(BLP_S_AXI_CTRL_MGMT_01_araddr),
        .BLP_S_AXI_CTRL_MGMT_01_arprot(BLP_S_AXI_CTRL_MGMT_01_arprot),
        .BLP_S_AXI_CTRL_MGMT_01_arready(BLP_S_AXI_CTRL_MGMT_01_arready),
        .BLP_S_AXI_CTRL_MGMT_01_arvalid(BLP_S_AXI_CTRL_MGMT_01_arvalid),
        .BLP_S_AXI_CTRL_MGMT_01_awaddr(BLP_S_AXI_CTRL_MGMT_01_awaddr),
        .BLP_S_AXI_CTRL_MGMT_01_awprot(BLP_S_AXI_CTRL_MGMT_01_awprot),
        .BLP_S_AXI_CTRL_MGMT_01_awready(BLP_S_AXI_CTRL_MGMT_01_awready),
        .BLP_S_AXI_CTRL_MGMT_01_awvalid(BLP_S_AXI_CTRL_MGMT_01_awvalid),
        .BLP_S_AXI_CTRL_MGMT_01_bready(BLP_S_AXI_CTRL_MGMT_01_bready),
        .BLP_S_AXI_CTRL_MGMT_01_bresp(BLP_S_AXI_CTRL_MGMT_01_bresp),
        .BLP_S_AXI_CTRL_MGMT_01_bvalid(BLP_S_AXI_CTRL_MGMT_01_bvalid),
        .BLP_S_AXI_CTRL_MGMT_01_rdata(BLP_S_AXI_CTRL_MGMT_01_rdata),
        .BLP_S_AXI_CTRL_MGMT_01_rready(BLP_S_AXI_CTRL_MGMT_01_rready),
        .BLP_S_AXI_CTRL_MGMT_01_rresp(BLP_S_AXI_CTRL_MGMT_01_rresp),
        .BLP_S_AXI_CTRL_MGMT_01_rvalid(BLP_S_AXI_CTRL_MGMT_01_rvalid),
        .BLP_S_AXI_CTRL_MGMT_01_wdata(BLP_S_AXI_CTRL_MGMT_01_wdata),
        .BLP_S_AXI_CTRL_MGMT_01_wready(BLP_S_AXI_CTRL_MGMT_01_wready),
        .BLP_S_AXI_CTRL_MGMT_01_wstrb(BLP_S_AXI_CTRL_MGMT_01_wstrb),
        .BLP_S_AXI_CTRL_MGMT_01_wvalid(BLP_S_AXI_CTRL_MGMT_01_wvalid),
        .BLP_S_AXI_CTRL_USER_00_araddr(BLP_S_AXI_CTRL_USER_00_araddr),
        .BLP_S_AXI_CTRL_USER_00_arprot(BLP_S_AXI_CTRL_USER_00_arprot),
        .BLP_S_AXI_CTRL_USER_00_arready(BLP_S_AXI_CTRL_USER_00_arready),
        .BLP_S_AXI_CTRL_USER_00_arvalid(BLP_S_AXI_CTRL_USER_00_arvalid),
        .BLP_S_AXI_CTRL_USER_00_awaddr(BLP_S_AXI_CTRL_USER_00_awaddr),
        .BLP_S_AXI_CTRL_USER_00_awprot(BLP_S_AXI_CTRL_USER_00_awprot),
        .BLP_S_AXI_CTRL_USER_00_awready(BLP_S_AXI_CTRL_USER_00_awready),
        .BLP_S_AXI_CTRL_USER_00_awvalid(BLP_S_AXI_CTRL_USER_00_awvalid),
        .BLP_S_AXI_CTRL_USER_00_bready(BLP_S_AXI_CTRL_USER_00_bready),
        .BLP_S_AXI_CTRL_USER_00_bresp(BLP_S_AXI_CTRL_USER_00_bresp),
        .BLP_S_AXI_CTRL_USER_00_bvalid(BLP_S_AXI_CTRL_USER_00_bvalid),
        .BLP_S_AXI_CTRL_USER_00_rdata(BLP_S_AXI_CTRL_USER_00_rdata),
        .BLP_S_AXI_CTRL_USER_00_rready(BLP_S_AXI_CTRL_USER_00_rready),
        .BLP_S_AXI_CTRL_USER_00_rresp(BLP_S_AXI_CTRL_USER_00_rresp),
        .BLP_S_AXI_CTRL_USER_00_rvalid(BLP_S_AXI_CTRL_USER_00_rvalid),
        .BLP_S_AXI_CTRL_USER_00_wdata(BLP_S_AXI_CTRL_USER_00_wdata),
        .BLP_S_AXI_CTRL_USER_00_wready(BLP_S_AXI_CTRL_USER_00_wready),
        .BLP_S_AXI_CTRL_USER_00_wstrb(BLP_S_AXI_CTRL_USER_00_wstrb),
        .BLP_S_AXI_CTRL_USER_00_wvalid(BLP_S_AXI_CTRL_USER_00_wvalid),
        .BLP_S_AXI_CTRL_USER_01_araddr(BLP_S_AXI_CTRL_USER_01_araddr),
        .BLP_S_AXI_CTRL_USER_01_arprot(BLP_S_AXI_CTRL_USER_01_arprot),
        .BLP_S_AXI_CTRL_USER_01_arready(BLP_S_AXI_CTRL_USER_01_arready),
        .BLP_S_AXI_CTRL_USER_01_arvalid(BLP_S_AXI_CTRL_USER_01_arvalid),
        .BLP_S_AXI_CTRL_USER_01_awaddr(BLP_S_AXI_CTRL_USER_01_awaddr),
        .BLP_S_AXI_CTRL_USER_01_awprot(BLP_S_AXI_CTRL_USER_01_awprot),
        .BLP_S_AXI_CTRL_USER_01_awready(BLP_S_AXI_CTRL_USER_01_awready),
        .BLP_S_AXI_CTRL_USER_01_awvalid(BLP_S_AXI_CTRL_USER_01_awvalid),
        .BLP_S_AXI_CTRL_USER_01_bready(BLP_S_AXI_CTRL_USER_01_bready),
        .BLP_S_AXI_CTRL_USER_01_bresp(BLP_S_AXI_CTRL_USER_01_bresp),
        .BLP_S_AXI_CTRL_USER_01_bvalid(BLP_S_AXI_CTRL_USER_01_bvalid),
        .BLP_S_AXI_CTRL_USER_01_rdata(BLP_S_AXI_CTRL_USER_01_rdata),
        .BLP_S_AXI_CTRL_USER_01_rready(BLP_S_AXI_CTRL_USER_01_rready),
        .BLP_S_AXI_CTRL_USER_01_rresp(BLP_S_AXI_CTRL_USER_01_rresp),
        .BLP_S_AXI_CTRL_USER_01_rvalid(BLP_S_AXI_CTRL_USER_01_rvalid),
        .BLP_S_AXI_CTRL_USER_01_wdata(BLP_S_AXI_CTRL_USER_01_wdata),
        .BLP_S_AXI_CTRL_USER_01_wready(BLP_S_AXI_CTRL_USER_01_wready),
        .BLP_S_AXI_CTRL_USER_01_wstrb(BLP_S_AXI_CTRL_USER_01_wstrb),
        .BLP_S_AXI_CTRL_USER_01_wvalid(BLP_S_AXI_CTRL_USER_01_wvalid),
        .BLP_S_AXI_CTRL_USER_02_araddr(BLP_S_AXI_CTRL_USER_02_araddr),
        .BLP_S_AXI_CTRL_USER_02_arprot(BLP_S_AXI_CTRL_USER_02_arprot),
        .BLP_S_AXI_CTRL_USER_02_arready(BLP_S_AXI_CTRL_USER_02_arready),
        .BLP_S_AXI_CTRL_USER_02_arvalid(BLP_S_AXI_CTRL_USER_02_arvalid),
        .BLP_S_AXI_CTRL_USER_02_awaddr(BLP_S_AXI_CTRL_USER_02_awaddr),
        .BLP_S_AXI_CTRL_USER_02_awprot(BLP_S_AXI_CTRL_USER_02_awprot),
        .BLP_S_AXI_CTRL_USER_02_awready(BLP_S_AXI_CTRL_USER_02_awready),
        .BLP_S_AXI_CTRL_USER_02_awvalid(BLP_S_AXI_CTRL_USER_02_awvalid),
        .BLP_S_AXI_CTRL_USER_02_bready(BLP_S_AXI_CTRL_USER_02_bready),
        .BLP_S_AXI_CTRL_USER_02_bresp(BLP_S_AXI_CTRL_USER_02_bresp),
        .BLP_S_AXI_CTRL_USER_02_bvalid(BLP_S_AXI_CTRL_USER_02_bvalid),
        .BLP_S_AXI_CTRL_USER_02_rdata(BLP_S_AXI_CTRL_USER_02_rdata),
        .BLP_S_AXI_CTRL_USER_02_rready(BLP_S_AXI_CTRL_USER_02_rready),
        .BLP_S_AXI_CTRL_USER_02_rresp(BLP_S_AXI_CTRL_USER_02_rresp),
        .BLP_S_AXI_CTRL_USER_02_rvalid(BLP_S_AXI_CTRL_USER_02_rvalid),
        .BLP_S_AXI_CTRL_USER_02_wdata(BLP_S_AXI_CTRL_USER_02_wdata),
        .BLP_S_AXI_CTRL_USER_02_wready(BLP_S_AXI_CTRL_USER_02_wready),
        .BLP_S_AXI_CTRL_USER_02_wstrb(BLP_S_AXI_CTRL_USER_02_wstrb),
        .BLP_S_AXI_CTRL_USER_02_wvalid(BLP_S_AXI_CTRL_USER_02_wvalid),
        .BLP_S_AXI_DATA_H2C_00_araddr(BLP_S_AXI_DATA_H2C_00_araddr),
        .BLP_S_AXI_DATA_H2C_00_arburst(BLP_S_AXI_DATA_H2C_00_arburst),
        .BLP_S_AXI_DATA_H2C_00_arcache(BLP_S_AXI_DATA_H2C_00_arcache),
        .BLP_S_AXI_DATA_H2C_00_arid(BLP_S_AXI_DATA_H2C_00_arid),
        .BLP_S_AXI_DATA_H2C_00_arlen(BLP_S_AXI_DATA_H2C_00_arlen),
        .BLP_S_AXI_DATA_H2C_00_arlock(BLP_S_AXI_DATA_H2C_00_arlock),
        .BLP_S_AXI_DATA_H2C_00_arprot(BLP_S_AXI_DATA_H2C_00_arprot),
        .BLP_S_AXI_DATA_H2C_00_arready(BLP_S_AXI_DATA_H2C_00_arready),
        .BLP_S_AXI_DATA_H2C_00_arvalid(BLP_S_AXI_DATA_H2C_00_arvalid),
        .BLP_S_AXI_DATA_H2C_00_awaddr(BLP_S_AXI_DATA_H2C_00_awaddr),
        .BLP_S_AXI_DATA_H2C_00_awburst(BLP_S_AXI_DATA_H2C_00_awburst),
        .BLP_S_AXI_DATA_H2C_00_awcache(BLP_S_AXI_DATA_H2C_00_awcache),
        .BLP_S_AXI_DATA_H2C_00_awid(BLP_S_AXI_DATA_H2C_00_awid),
        .BLP_S_AXI_DATA_H2C_00_awlen(BLP_S_AXI_DATA_H2C_00_awlen),
        .BLP_S_AXI_DATA_H2C_00_awlock(BLP_S_AXI_DATA_H2C_00_awlock),
        .BLP_S_AXI_DATA_H2C_00_awprot(BLP_S_AXI_DATA_H2C_00_awprot),
        .BLP_S_AXI_DATA_H2C_00_awready(BLP_S_AXI_DATA_H2C_00_awready),
        .BLP_S_AXI_DATA_H2C_00_awvalid(BLP_S_AXI_DATA_H2C_00_awvalid),
        .BLP_S_AXI_DATA_H2C_00_bid(BLP_S_AXI_DATA_H2C_00_bid),
        .BLP_S_AXI_DATA_H2C_00_bready(BLP_S_AXI_DATA_H2C_00_bready),
        .BLP_S_AXI_DATA_H2C_00_bresp(BLP_S_AXI_DATA_H2C_00_bresp),
        .BLP_S_AXI_DATA_H2C_00_bvalid(BLP_S_AXI_DATA_H2C_00_bvalid),
        .BLP_S_AXI_DATA_H2C_00_rdata(BLP_S_AXI_DATA_H2C_00_rdata),
        .BLP_S_AXI_DATA_H2C_00_rid(BLP_S_AXI_DATA_H2C_00_rid),
        .BLP_S_AXI_DATA_H2C_00_rlast(BLP_S_AXI_DATA_H2C_00_rlast),
        .BLP_S_AXI_DATA_H2C_00_rready(BLP_S_AXI_DATA_H2C_00_rready),
        .BLP_S_AXI_DATA_H2C_00_rresp(BLP_S_AXI_DATA_H2C_00_rresp),
        .BLP_S_AXI_DATA_H2C_00_rvalid(BLP_S_AXI_DATA_H2C_00_rvalid),
        .BLP_S_AXI_DATA_H2C_00_wdata(BLP_S_AXI_DATA_H2C_00_wdata),
        .BLP_S_AXI_DATA_H2C_00_wlast(BLP_S_AXI_DATA_H2C_00_wlast),
        .BLP_S_AXI_DATA_H2C_00_wready(BLP_S_AXI_DATA_H2C_00_wready),
        .BLP_S_AXI_DATA_H2C_00_wstrb(BLP_S_AXI_DATA_H2C_00_wstrb),
        .BLP_S_AXI_DATA_H2C_00_wvalid(BLP_S_AXI_DATA_H2C_00_wvalid),
        .ULP_M_AXI_CTRL_MGMT_00_araddr(ULP_M_AXI_CTRL_MGMT_00_araddr),
        .ULP_M_AXI_CTRL_MGMT_00_arprot(ULP_M_AXI_CTRL_MGMT_00_arprot),
        .ULP_M_AXI_CTRL_MGMT_00_arready(ULP_M_AXI_CTRL_MGMT_00_arready),
        .ULP_M_AXI_CTRL_MGMT_00_arvalid(ULP_M_AXI_CTRL_MGMT_00_arvalid),
        .ULP_M_AXI_CTRL_MGMT_00_awaddr(ULP_M_AXI_CTRL_MGMT_00_awaddr),
        .ULP_M_AXI_CTRL_MGMT_00_awprot(ULP_M_AXI_CTRL_MGMT_00_awprot),
        .ULP_M_AXI_CTRL_MGMT_00_awready(ULP_M_AXI_CTRL_MGMT_00_awready),
        .ULP_M_AXI_CTRL_MGMT_00_awvalid(ULP_M_AXI_CTRL_MGMT_00_awvalid),
        .ULP_M_AXI_CTRL_MGMT_00_bready(ULP_M_AXI_CTRL_MGMT_00_bready),
        .ULP_M_AXI_CTRL_MGMT_00_bresp(ULP_M_AXI_CTRL_MGMT_00_bresp),
        .ULP_M_AXI_CTRL_MGMT_00_bvalid(ULP_M_AXI_CTRL_MGMT_00_bvalid),
        .ULP_M_AXI_CTRL_MGMT_00_rdata(ULP_M_AXI_CTRL_MGMT_00_rdata),
        .ULP_M_AXI_CTRL_MGMT_00_rready(ULP_M_AXI_CTRL_MGMT_00_rready),
        .ULP_M_AXI_CTRL_MGMT_00_rresp(ULP_M_AXI_CTRL_MGMT_00_rresp),
        .ULP_M_AXI_CTRL_MGMT_00_rvalid(ULP_M_AXI_CTRL_MGMT_00_rvalid),
        .ULP_M_AXI_CTRL_MGMT_00_wdata(ULP_M_AXI_CTRL_MGMT_00_wdata),
        .ULP_M_AXI_CTRL_MGMT_00_wready(ULP_M_AXI_CTRL_MGMT_00_wready),
        .ULP_M_AXI_CTRL_MGMT_00_wstrb(ULP_M_AXI_CTRL_MGMT_00_wstrb),
        .ULP_M_AXI_CTRL_MGMT_00_wvalid(ULP_M_AXI_CTRL_MGMT_00_wvalid),
        .ULP_M_AXI_CTRL_MGMT_01_araddr(ULP_M_AXI_CTRL_MGMT_01_araddr),
        .ULP_M_AXI_CTRL_MGMT_01_arprot(ULP_M_AXI_CTRL_MGMT_01_arprot),
        .ULP_M_AXI_CTRL_MGMT_01_arready(ULP_M_AXI_CTRL_MGMT_01_arready),
        .ULP_M_AXI_CTRL_MGMT_01_arvalid(ULP_M_AXI_CTRL_MGMT_01_arvalid),
        .ULP_M_AXI_CTRL_MGMT_01_awaddr(ULP_M_AXI_CTRL_MGMT_01_awaddr),
        .ULP_M_AXI_CTRL_MGMT_01_awprot(ULP_M_AXI_CTRL_MGMT_01_awprot),
        .ULP_M_AXI_CTRL_MGMT_01_awready(ULP_M_AXI_CTRL_MGMT_01_awready),
        .ULP_M_AXI_CTRL_MGMT_01_awvalid(ULP_M_AXI_CTRL_MGMT_01_awvalid),
        .ULP_M_AXI_CTRL_MGMT_01_bready(ULP_M_AXI_CTRL_MGMT_01_bready),
        .ULP_M_AXI_CTRL_MGMT_01_bresp(ULP_M_AXI_CTRL_MGMT_01_bresp),
        .ULP_M_AXI_CTRL_MGMT_01_bvalid(ULP_M_AXI_CTRL_MGMT_01_bvalid),
        .ULP_M_AXI_CTRL_MGMT_01_rdata(ULP_M_AXI_CTRL_MGMT_01_rdata),
        .ULP_M_AXI_CTRL_MGMT_01_rready(ULP_M_AXI_CTRL_MGMT_01_rready),
        .ULP_M_AXI_CTRL_MGMT_01_rresp(ULP_M_AXI_CTRL_MGMT_01_rresp),
        .ULP_M_AXI_CTRL_MGMT_01_rvalid(ULP_M_AXI_CTRL_MGMT_01_rvalid),
        .ULP_M_AXI_CTRL_MGMT_01_wdata(ULP_M_AXI_CTRL_MGMT_01_wdata),
        .ULP_M_AXI_CTRL_MGMT_01_wready(ULP_M_AXI_CTRL_MGMT_01_wready),
        .ULP_M_AXI_CTRL_MGMT_01_wstrb(ULP_M_AXI_CTRL_MGMT_01_wstrb),
        .ULP_M_AXI_CTRL_MGMT_01_wvalid(ULP_M_AXI_CTRL_MGMT_01_wvalid),
        .ULP_M_AXI_CTRL_USER_00_araddr(ULP_M_AXI_CTRL_USER_00_araddr),
        .ULP_M_AXI_CTRL_USER_00_arprot(ULP_M_AXI_CTRL_USER_00_arprot),
        .ULP_M_AXI_CTRL_USER_00_arready(ULP_M_AXI_CTRL_USER_00_arready),
        .ULP_M_AXI_CTRL_USER_00_arvalid(ULP_M_AXI_CTRL_USER_00_arvalid),
        .ULP_M_AXI_CTRL_USER_00_awaddr(ULP_M_AXI_CTRL_USER_00_awaddr),
        .ULP_M_AXI_CTRL_USER_00_awprot(ULP_M_AXI_CTRL_USER_00_awprot),
        .ULP_M_AXI_CTRL_USER_00_awready(ULP_M_AXI_CTRL_USER_00_awready),
        .ULP_M_AXI_CTRL_USER_00_awvalid(ULP_M_AXI_CTRL_USER_00_awvalid),
        .ULP_M_AXI_CTRL_USER_00_bready(ULP_M_AXI_CTRL_USER_00_bready),
        .ULP_M_AXI_CTRL_USER_00_bresp(ULP_M_AXI_CTRL_USER_00_bresp),
        .ULP_M_AXI_CTRL_USER_00_bvalid(ULP_M_AXI_CTRL_USER_00_bvalid),
        .ULP_M_AXI_CTRL_USER_00_rdata(ULP_M_AXI_CTRL_USER_00_rdata),
        .ULP_M_AXI_CTRL_USER_00_rready(ULP_M_AXI_CTRL_USER_00_rready),
        .ULP_M_AXI_CTRL_USER_00_rresp(ULP_M_AXI_CTRL_USER_00_rresp),
        .ULP_M_AXI_CTRL_USER_00_rvalid(ULP_M_AXI_CTRL_USER_00_rvalid),
        .ULP_M_AXI_CTRL_USER_00_wdata(ULP_M_AXI_CTRL_USER_00_wdata),
        .ULP_M_AXI_CTRL_USER_00_wready(ULP_M_AXI_CTRL_USER_00_wready),
        .ULP_M_AXI_CTRL_USER_00_wstrb(ULP_M_AXI_CTRL_USER_00_wstrb),
        .ULP_M_AXI_CTRL_USER_00_wvalid(ULP_M_AXI_CTRL_USER_00_wvalid),
        .ULP_M_AXI_CTRL_USER_01_araddr(ULP_M_AXI_CTRL_USER_01_araddr),
        .ULP_M_AXI_CTRL_USER_01_arprot(ULP_M_AXI_CTRL_USER_01_arprot),
        .ULP_M_AXI_CTRL_USER_01_arready(ULP_M_AXI_CTRL_USER_01_arready),
        .ULP_M_AXI_CTRL_USER_01_arvalid(ULP_M_AXI_CTRL_USER_01_arvalid),
        .ULP_M_AXI_CTRL_USER_01_awaddr(ULP_M_AXI_CTRL_USER_01_awaddr),
        .ULP_M_AXI_CTRL_USER_01_awprot(ULP_M_AXI_CTRL_USER_01_awprot),
        .ULP_M_AXI_CTRL_USER_01_awready(ULP_M_AXI_CTRL_USER_01_awready),
        .ULP_M_AXI_CTRL_USER_01_awvalid(ULP_M_AXI_CTRL_USER_01_awvalid),
        .ULP_M_AXI_CTRL_USER_01_bready(ULP_M_AXI_CTRL_USER_01_bready),
        .ULP_M_AXI_CTRL_USER_01_bresp(ULP_M_AXI_CTRL_USER_01_bresp),
        .ULP_M_AXI_CTRL_USER_01_bvalid(ULP_M_AXI_CTRL_USER_01_bvalid),
        .ULP_M_AXI_CTRL_USER_01_rdata(ULP_M_AXI_CTRL_USER_01_rdata),
        .ULP_M_AXI_CTRL_USER_01_rready(ULP_M_AXI_CTRL_USER_01_rready),
        .ULP_M_AXI_CTRL_USER_01_rresp(ULP_M_AXI_CTRL_USER_01_rresp),
        .ULP_M_AXI_CTRL_USER_01_rvalid(ULP_M_AXI_CTRL_USER_01_rvalid),
        .ULP_M_AXI_CTRL_USER_01_wdata(ULP_M_AXI_CTRL_USER_01_wdata),
        .ULP_M_AXI_CTRL_USER_01_wready(ULP_M_AXI_CTRL_USER_01_wready),
        .ULP_M_AXI_CTRL_USER_01_wstrb(ULP_M_AXI_CTRL_USER_01_wstrb),
        .ULP_M_AXI_CTRL_USER_01_wvalid(ULP_M_AXI_CTRL_USER_01_wvalid),
        .ULP_M_AXI_CTRL_USER_02_araddr(ULP_M_AXI_CTRL_USER_02_araddr),
        .ULP_M_AXI_CTRL_USER_02_arprot(ULP_M_AXI_CTRL_USER_02_arprot),
        .ULP_M_AXI_CTRL_USER_02_arready(ULP_M_AXI_CTRL_USER_02_arready),
        .ULP_M_AXI_CTRL_USER_02_arvalid(ULP_M_AXI_CTRL_USER_02_arvalid),
        .ULP_M_AXI_CTRL_USER_02_awaddr(ULP_M_AXI_CTRL_USER_02_awaddr),
        .ULP_M_AXI_CTRL_USER_02_awprot(ULP_M_AXI_CTRL_USER_02_awprot),
        .ULP_M_AXI_CTRL_USER_02_awready(ULP_M_AXI_CTRL_USER_02_awready),
        .ULP_M_AXI_CTRL_USER_02_awvalid(ULP_M_AXI_CTRL_USER_02_awvalid),
        .ULP_M_AXI_CTRL_USER_02_bready(ULP_M_AXI_CTRL_USER_02_bready),
        .ULP_M_AXI_CTRL_USER_02_bresp(ULP_M_AXI_CTRL_USER_02_bresp),
        .ULP_M_AXI_CTRL_USER_02_bvalid(ULP_M_AXI_CTRL_USER_02_bvalid),
        .ULP_M_AXI_CTRL_USER_02_rdata(ULP_M_AXI_CTRL_USER_02_rdata),
        .ULP_M_AXI_CTRL_USER_02_rready(ULP_M_AXI_CTRL_USER_02_rready),
        .ULP_M_AXI_CTRL_USER_02_rresp(ULP_M_AXI_CTRL_USER_02_rresp),
        .ULP_M_AXI_CTRL_USER_02_rvalid(ULP_M_AXI_CTRL_USER_02_rvalid),
        .ULP_M_AXI_CTRL_USER_02_wdata(ULP_M_AXI_CTRL_USER_02_wdata),
        .ULP_M_AXI_CTRL_USER_02_wready(ULP_M_AXI_CTRL_USER_02_wready),
        .ULP_M_AXI_CTRL_USER_02_wstrb(ULP_M_AXI_CTRL_USER_02_wstrb),
        .ULP_M_AXI_CTRL_USER_02_wvalid(ULP_M_AXI_CTRL_USER_02_wvalid),
        .ULP_M_AXI_DATA_H2C_00_araddr(ULP_M_AXI_DATA_H2C_00_araddr),
        .ULP_M_AXI_DATA_H2C_00_arburst(ULP_M_AXI_DATA_H2C_00_arburst),
        .ULP_M_AXI_DATA_H2C_00_arcache(ULP_M_AXI_DATA_H2C_00_arcache),
        .ULP_M_AXI_DATA_H2C_00_arid(ULP_M_AXI_DATA_H2C_00_arid),
        .ULP_M_AXI_DATA_H2C_00_arlen(ULP_M_AXI_DATA_H2C_00_arlen),
        .ULP_M_AXI_DATA_H2C_00_arlock(ULP_M_AXI_DATA_H2C_00_arlock),
        .ULP_M_AXI_DATA_H2C_00_arprot(ULP_M_AXI_DATA_H2C_00_arprot),
        .ULP_M_AXI_DATA_H2C_00_arready(ULP_M_AXI_DATA_H2C_00_arready),
        .ULP_M_AXI_DATA_H2C_00_arvalid(ULP_M_AXI_DATA_H2C_00_arvalid),
        .ULP_M_AXI_DATA_H2C_00_awaddr(ULP_M_AXI_DATA_H2C_00_awaddr),
        .ULP_M_AXI_DATA_H2C_00_awburst(ULP_M_AXI_DATA_H2C_00_awburst),
        .ULP_M_AXI_DATA_H2C_00_awcache(ULP_M_AXI_DATA_H2C_00_awcache),
        .ULP_M_AXI_DATA_H2C_00_awid(ULP_M_AXI_DATA_H2C_00_awid),
        .ULP_M_AXI_DATA_H2C_00_awlen(ULP_M_AXI_DATA_H2C_00_awlen),
        .ULP_M_AXI_DATA_H2C_00_awlock(ULP_M_AXI_DATA_H2C_00_awlock),
        .ULP_M_AXI_DATA_H2C_00_awprot(ULP_M_AXI_DATA_H2C_00_awprot),
        .ULP_M_AXI_DATA_H2C_00_awready(ULP_M_AXI_DATA_H2C_00_awready),
        .ULP_M_AXI_DATA_H2C_00_awvalid(ULP_M_AXI_DATA_H2C_00_awvalid),
        .ULP_M_AXI_DATA_H2C_00_bid(ULP_M_AXI_DATA_H2C_00_bid),
        .ULP_M_AXI_DATA_H2C_00_bready(ULP_M_AXI_DATA_H2C_00_bready),
        .ULP_M_AXI_DATA_H2C_00_bresp(ULP_M_AXI_DATA_H2C_00_bresp),
        .ULP_M_AXI_DATA_H2C_00_bvalid(ULP_M_AXI_DATA_H2C_00_bvalid),
        .ULP_M_AXI_DATA_H2C_00_rdata(ULP_M_AXI_DATA_H2C_00_rdata),
        .ULP_M_AXI_DATA_H2C_00_rid(ULP_M_AXI_DATA_H2C_00_rid),
        .ULP_M_AXI_DATA_H2C_00_rlast(ULP_M_AXI_DATA_H2C_00_rlast),
        .ULP_M_AXI_DATA_H2C_00_rready(ULP_M_AXI_DATA_H2C_00_rready),
        .ULP_M_AXI_DATA_H2C_00_rresp(ULP_M_AXI_DATA_H2C_00_rresp),
        .ULP_M_AXI_DATA_H2C_00_rvalid(ULP_M_AXI_DATA_H2C_00_rvalid),
        .ULP_M_AXI_DATA_H2C_00_wdata(ULP_M_AXI_DATA_H2C_00_wdata),
        .ULP_M_AXI_DATA_H2C_00_wlast(ULP_M_AXI_DATA_H2C_00_wlast),
        .ULP_M_AXI_DATA_H2C_00_wready(ULP_M_AXI_DATA_H2C_00_wready),
        .ULP_M_AXI_DATA_H2C_00_wstrb(ULP_M_AXI_DATA_H2C_00_wstrb),
        .ULP_M_AXI_DATA_H2C_00_wvalid(ULP_M_AXI_DATA_H2C_00_wvalid),
        .blp_m_data_hbm_temp_00(blp_m_data_hbm_temp_00),
        .blp_m_data_hbm_temp_01(blp_m_data_hbm_temp_01),
        .blp_m_data_memory_calib_complete_00(blp_m_data_memory_calib_complete_00),
        .blp_m_irq_cu_00(blp_m_irq_cu_00),
        .blp_m_irq_hbm_cattrip_00(blp_m_irq_hbm_cattrip_00),
        .blp_s_aclk_ctrl_00(blp_s_aclk_ctrl_00),
        .blp_s_aclk_freerun_ref_00(blp_s_aclk_freerun_ref_00),
        .blp_s_aclk_pcie_00(blp_s_aclk_pcie_00),
        .blp_s_aresetn_ctrl_00(blp_s_aresetn_ctrl_00),
        .blp_s_aresetn_pcie_00(blp_s_aresetn_pcie_00),
        .blp_s_data_satellite_ctrl_data_00(blp_s_data_satellite_ctrl_data_00),
        .ulp_m_aclk_ctrl_00(ulp_m_aclk_ctrl_00),
        .ulp_m_aclk_freerun_ref_00(ulp_m_aclk_freerun_ref_00),
        .ulp_m_aclk_pcie_00(ulp_m_aclk_pcie_00),
        .ulp_m_aresetn_ctrl_00(ulp_m_aresetn_ctrl_00),
        .ulp_m_aresetn_pcie_00(ulp_m_aresetn_pcie_00),
        .ulp_m_data_satellite_ctrl_data_00(ulp_m_data_satellite_ctrl_data_00),
        .ulp_s_data_hbm_temp_00(ulp_s_data_hbm_temp_00),
        .ulp_s_data_hbm_temp_01(ulp_s_data_hbm_temp_01),
        .ulp_s_data_memory_calib_complete_00(ulp_s_data_memory_calib_complete_00),
        .ulp_s_irq_cu_00(ulp_s_irq_cu_00),
        .ulp_s_irq_hbm_cattrip_00(ulp_s_irq_hbm_cattrip_00));
endmodule
