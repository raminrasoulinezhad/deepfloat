create_project project [lindex $argv 0] -part [lindex $argv 3]

# using: find . -name "*.sv"
add_files {../paper_syn/PaperIntegerSystolicGrid.sv}
add_files {../paper_syn/PaperIntegerPETop.sv}
add_files {../paper_syn/PaperIntegerPE.sv}

add_files -fileset constrs_1 -norecurse [lindex $argv 4]

update_compile_order -fileset sources_1
update_compile_order -fileset sources_1

create_run synth -flow {Vivado Synthesis 2018}
create_run impl -parent_run synth -flow {Vivado Implementation 2018}

set_property top PaperIntegerSystolicGrid [current_fileset]
set_property generic "TILE=[lindex $argv 5] WIDTH=[lindex $argv 1] ACC=[lindex $argv 2]" [current_fileset] 

set_property STEPS.SYNTH_DESIGN.ARGS.MAX_DSP 0 [get_runs synth]

reset_run synth
reset_run impl

#launch_runs synth -jobs 4
#wait_on_run synth

launch_runs impl -jobs 4
wait_on_run impl

exit 
