#!/bin/sh

# 
# vpl(TM)
# runme.sh: a vpl-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/Vitis/2022.1/bin:/opt/Xilinx/Vitis/2022.1/bin:/opt/Xilinx/Vitis/2022.1/bin
else
  PATH=/opt/Xilinx/Vitis/2022.1/bin:/opt/Xilinx/Vitis/2022.1/bin:/opt/Xilinx/Vitis/2022.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/mnt/HLSNAS/02.IZunsR/course-lab_A/Vitis-Tutorials/Hardware_Acceleration/Design_Tutorials/07-host-code-opt/reference-files/_x/link/vivado/vpl'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .create_project.begin.rst
EAStep vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace


