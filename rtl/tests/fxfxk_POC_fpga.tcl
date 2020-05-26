create_project project [lindex $argv 0] -part [lindex $argv 4]

# using: find . -name "*.sv"
add_files {../PiecesOfCakes/FixedMultiplyAdd_POC.sv}

add_files -fileset constrs_1 -norecurse ./Cons.xdc

update_compile_order -fileset sources_1
update_compile_order -fileset sources_1

create_run synth -flow {Vivado Synthesis 2018}
create_run impl -parent_run synth -flow {Vivado Implementation 2018}

set_property top FixedMultiplyAdd_POC [current_fileset]
set_property generic "IN_A_SIZE=[lindex $argv 1] IN_B_SIZE=[lindex $argv 2] ACC_DESIRED=[lindex $argv 3]" [current_fileset] 

set_property STEPS.SYNTH_DESIGN.ARGS.MAX_DSP 0 [get_runs synth]

reset_run synth
reset_run impl

#launch_runs synth -jobs 4
#wait_on_run synth

launch_runs impl -jobs 4
wait_on_run impl

exit 
