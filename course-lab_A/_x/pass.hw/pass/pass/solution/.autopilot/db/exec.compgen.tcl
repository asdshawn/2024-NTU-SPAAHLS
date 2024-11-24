# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name inStream2 \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inStream2 \
    op interface \
    ports { inStream2_dout { I 512 vector } inStream2_num_data_valid { I 2 vector } inStream2_fifo_cap { I 2 vector } inStream2_empty_n { I 1 bit } inStream2_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name outStream3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outStream3 \
    op interface \
    ports { outStream3_din { O 512 vector } outStream3_num_data_valid { I 2 vector } outStream3_fifo_cap { I 2 vector } outStream3_full_n { I 1 bit } outStream3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name numInputs \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_numInputs \
    op interface \
    ports { numInputs_dout { I 32 vector } numInputs_num_data_valid { I 2 vector } numInputs_fifo_cap { I 2 vector } numInputs_empty_n { I 1 bit } numInputs_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name processDelay \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_processDelay \
    op interface \
    ports { processDelay_dout { I 32 vector } processDelay_num_data_valid { I 3 vector } processDelay_fifo_cap { I 3 vector } processDelay_empty_n { I 1 bit } processDelay_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name numInputs_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_numInputs_c \
    op interface \
    ports { numInputs_c_din { O 32 vector } numInputs_c_num_data_valid { I 2 vector } numInputs_c_fifo_cap { I 2 vector } numInputs_c_full_n { I 1 bit } numInputs_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


