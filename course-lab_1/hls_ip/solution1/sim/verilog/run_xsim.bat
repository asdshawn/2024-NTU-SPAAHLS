
set PATH=
call E:/Xilinx/Vivado/2022.1/bin/xelab xil_defaultlib.apatb_multip_2num_top glbl -Oenable_linking_all_libraries  -prj multip_2num.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_14 --lib "ieee_proposed=./ieee_proposed" -s multip_2num -debug wave
call E:/Xilinx/Vivado/2022.1/bin/xsim --noieeewarnings multip_2num -tclbatch multip_2num.tcl -view multip_2num_dataflow_ana.wcfg -protoinst multip_2num.protoinst

