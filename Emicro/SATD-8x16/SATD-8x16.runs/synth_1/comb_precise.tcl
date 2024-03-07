# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcsg325-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.cache/wt [current_project]
set_property parent.project_path /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib {
  /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.srcs/sources_1/new/ht_vertical.v
  /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.srcs/sources_1/new/horizontal.v
  /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.srcs/sources_1/new/sum.v
  /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.srcs/sources_1/new/differences.v
  /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.srcs/sources_1/new/comb_precise.v
  /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.srcs/sources_1/new/block.v
  /media/juliana/LinFiles/Documents/GitHub/SATD-research/Emicro/SATD-8x16/SATD-8x16.srcs/sources_1/new/block_htv_absum.v
}
synth_design -top comb_precise -part xc7a35tcsg325-1
write_checkpoint -noxdef comb_precise.dcp
catch { report_utilization -file comb_precise_utilization_synth.rpt -pb comb_precise_utilization_synth.pb }
