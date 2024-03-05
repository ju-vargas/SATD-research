#!/bin/bash -f
xv_path="/media/juliana/Lin/Xilinx/Vivado/2015.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim satd_tb_behav -key {Behavioral:sim_1:Functional:satd_tb} -tclbatch satd_tb.tcl -view /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/ht_horizontal_tb_behav.wcfg -log simulate.log
