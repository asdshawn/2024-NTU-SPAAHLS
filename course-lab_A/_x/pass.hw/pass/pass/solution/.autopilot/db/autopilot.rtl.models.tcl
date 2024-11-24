set SynModuleInfo {
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME pass_entry_proc}
  {SRCNAME read_Pipeline_VITIS_LOOP_13_1 MODELNAME read_Pipeline_VITIS_LOOP_13_1 RTLNAME pass_read_Pipeline_VITIS_LOOP_13_1
    SUBMODULES {
      {MODELNAME pass_flow_control_loop_pipe_sequential_init RTLNAME pass_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME pass_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME read MODELNAME read_r RTLNAME pass_read_r}
  {SRCNAME exec_Pipeline_VITIS_LOOP_23_1 MODELNAME exec_Pipeline_VITIS_LOOP_23_1 RTLNAME pass_exec_Pipeline_VITIS_LOOP_23_1
    SUBMODULES {
      {MODELNAME pass_add_512ns_512ns_512_2_1 RTLNAME pass_add_512ns_512ns_512_2_1 BINDTYPE op TYPE add IMPL fabric LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME exec MODELNAME exec RTLNAME pass_exec}
  {SRCNAME write_Pipeline_VITIS_LOOP_35_1 MODELNAME write_Pipeline_VITIS_LOOP_35_1 RTLNAME pass_write_Pipeline_VITIS_LOOP_35_1}
  {SRCNAME write MODELNAME write_r RTLNAME pass_write_r}
  {SRCNAME pass_dataflow MODELNAME pass_dataflow RTLNAME pass_pass_dataflow
    SUBMODULES {
      {MODELNAME pass_fifo_w64_d4_S RTLNAME pass_fifo_w64_d4_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME pass_fifo_w32_d3_S RTLNAME pass_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME pass_fifo_w512_d2_S RTLNAME pass_fifo_w512_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME pass_fifo_w32_d2_S RTLNAME pass_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME pass_start_for_exec_U0 RTLNAME pass_start_for_exec_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME pass_start_for_write_U0 RTLNAME pass_start_for_write_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME pass MODELNAME pass RTLNAME pass IS_TOP 1
    SUBMODULES {
      {MODELNAME pass_p0_m_axi RTLNAME pass_p0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pass_p1_m_axi RTLNAME pass_p1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME pass_control_s_axi RTLNAME pass_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
