#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/media/juliana/Lin/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/lin64:/media/juliana/Lin/Xilinx/Vivado/2015.4/bin
else
  PATH=/media/juliana/Lin/Xilinx/Vivado/2015.4/ids_lite/ISE/bin/lin64:/media/juliana/Lin/Xilinx/Vivado/2015.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/media/juliana/Lin/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/media/juliana/Lin/Xilinx/Vivado/2015.4/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.runs/synth_1'
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

EAStep vivado -log comb_precise.vds -m64 -mode batch -messageDb vivado.pb -notrace -source comb_precise.tcl
