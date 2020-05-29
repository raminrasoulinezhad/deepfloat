create_project project [lindex $argv 0] -part [lindex $argv 6]

# using: find . -name "*.sv"
add_files {../PiecesOfCakes/FloatMultiplyAdd_POC.sv}

add_files -fileset constrs_1 -norecurse [lindex $argv 7]
update_compile_order -fileset sources_1
update_compile_order -fileset sources_1

create_run synth -flow {Vivado Synthesis 2018}
create_run impl -parent_run synth -flow {Vivado Implementation 2018}

set_property top FloatMultiplyAdd_POC [current_fileset]
set_property generic "EXP_IN_A=[lindex $argv 1] FRAC_IN_A=[lindex $argv 2] EXP_IN_B=[lindex $argv 3] FRAC_IN_B=[lindex $argv 4] ACC_DESIRED=[lindex $argv 5]" [current_fileset] 

set_property STEPS.SYNTH_DESIGN.ARGS.MAX_DSP 0 [get_runs synth]

reset_run synth
reset_run impl

#launch_runs synth -jobs 4
#wait_on_run synth

launch_runs impl -jobs 4
wait_on_run impl

exit 
