set trace_signals(kernel_group) {
  pass_1 {s_axi_control*ARADDR s_axi_control*RDATA s_axi_control*RVALID s_axi_control*RREADY s_axi_control*AWADDR s_axi_control*WDATA s_axi_control*WVALID s_axi_control*WREADY m_axi_p0*ARADDR m_axi_p0*RDATA m_axi_p0*RVALID m_axi_p0*RREADY m_axi_p0*AWADDR m_axi_p0*WDATA m_axi_p0*WVALID m_axi_p0*WREADY m_axi_p1*ARADDR m_axi_p1*RDATA m_axi_p1*RVALID m_axi_p1*RREADY m_axi_p1*AWADDR m_axi_p1*WDATA m_axi_p1*WVALID m_axi_p1*WREADY} {}
}

set trace_signals(kernel) {
  ap_start ap_ready ap_done
}

set trace_signals(adapter) {
  *axis_*tdata *axis_*tvalid *axis_*tready S*WADDR S*WDATA S*ARADDR S*RDATA
}

set trace_signals(datamover) {
  stream_t* reg_bus_awaddr reg_bus_wdata
}
