############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_ip_2
set_top fir_n11_strm
add_files hls_FIRN11Stream/FIR.cpp
add_files hls_FIRN11Stream/FIR.h
add_files -tb hls_FIRN11Stream/FIRTester.cpp
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
#source "./hls_ip_2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
