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
ExecStep $xv_path/bin/xelab -wto 2141708e443a49eca9cb7a4d21c3257b -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot comb_aprox_3_tb_behav xil_defaultlib.comb_aprox_3_tb xil_defaultlib.glbl -log elaborate.log
