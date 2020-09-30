create_project project [lindex $argv 0] -part [lindex $argv 6]

# using: find . -name "*.sv"
add_files {../paper_syn/SystolicGrid_ffk.sv}
add_files {../paper_syn/PE_ffk.sv}
add_files {../PiecesOfCakes/FloatMultiplyAdd_POC_combinational.sv}

add_files -fileset constrs_1 -norecurse [lindex $argv 7]
update_compile_order -fileset sources_1
update_compile_order -fileset sources_1

create_run synth -flow {Vivado Synthesis 2018}
create_run impl -parent_run synth -flow {Vivado Implementation 2018}

set_property top SystolicGrid_ffk [current_fileset]
set_property generic "TILE=[lindex $argv 8] EXP_IN_A=[lindex $argv 1] FRAC_IN_A=[lindex $argv 2] EXP_IN_B=[lindex $argv 3] FRAC_IN_B=[lindex $argv 4] ACC_DESIRED=[lindex $argv 5]" [current_fileset] 

set_property STEPS.SYNTH_DESIGN.ARGS.MAX_DSP 0 [get_runs synth]

reset_run synth
reset_run impl

#launch_runs synth -jobs 4
#wait_on_run synth

launch_runs impl -jobs 4
wait_on_run impl

exit 
