######################################################
# Script for Cadence RTL Compiler synthesis      
######################################################

#####################################################################################################################
# Libraries #########################################################################################################
#####################################################################################################################
# Tutorial sample in the RTL compiler install directory:
# 	/home/eda/cadence/installs/CTOS142/share/synth/tutorials/tech/tutorial.lib
# ############################################################################################################
# FreePDK - 45nm
# 		~/Download/NCSU/NCSU-FreePDK45-1.4/ncsu-FreePDK45-1.4/FreePDK45/osu_soc/lib/files/gscl45nm.lib
# ############################################################################################################
# STMicro - 28nm
#	Worked (all of them, each one is a corner):
#		/mnt/edatools/PDKs/STMicro28nm/cmos28fdsoi_29/C28SOI_SC_12_CORE_LL/5.1-05/libs 
#			i.g. C28SOI_SC_12_CORE_LL_ff28_1.15V_0.00V_0.00V_0.00V_m40C.lib
#		/mnt/edatools/PDKs/STMicro28nm/cmos28fdsoi_29/C28SOI_SC_12_CORE_LR/5.1-03/libs/
#			i.g. C28SOI_SC_12_CORE_LR_tt28_1.20V_25C.lib
# ############################################################################################################
# STMicro - 130nm
#	Worked (all of them, each one is a corner):
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORE9A85L035/5.2-00/libs
#			i.g. CORE9A85L035_bc_1.98V_125C.lib
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORE9A85L05/5.3-00/libs
#			i.g. CORE9A85L05_wc_1.65V_170C.lib
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORE9ALPULL/2.0/libs
#			i.g. CORE9ALPULL_bc_1.40V_125C.lib
#		/mnt/edatools/PDKs/ST130nm_HCMOS9A_NVM200Addon/hcmos9a_109/CORX9ALPULL/3.1-01/libs
#			i.g. CORX9ALPULL_nom_1.20V_25C.lib
#####################################################################################################################

# parameters
set a_e $paramters(a_e)
set a_f $paramters(a_f)
set b_e $paramters(b_e)
set b_f $paramters(b_f)
set acc_d $paramters(acc_d)

set tile $paramters(tile)

set_attribute hdl_search_path {../../../}

set_attribute lib_search_path {/mnt/edatools/PDKs/STMicro28nm/cmos28fdsoi_29/C28SOI_SC_12_CORE_LR/5.1-03/libs/}
set_attribute library [list C28SOI_SC_12_CORE_LR_tt28_1.20V_25C.lib]
set_attribute information_level 6 

# using: find . -name "*.sv", then rmoving Instances, tests, Debug (utils/DebugFunctions.sv), ../posit/QuireDef_pkg.sv, and all posits
## place all packages first (compilation is in order)

set myFiles [list paper_syn/SystolicGrid_ffk.sv  paper_syn/PE_ffk.sv  PiecesOfCakes/FloatMultiplyAdd_POC_combinational.sv];

# name of top level module
set basename SystolicGrid_ffk;
set myClk clock                  ;# clock name
set myPeriod_ps $paramters(period)             ;# Clock period in ps
set myInDelay_ns 0.0             ;# delay from clock to inputs valid
set myOutDelay_ns 0.0            ;# delay from clock to output valid
set runname initialtest          ;# name appended to output files

#*********************************************************
#*   below here shouldn't need to be changed...          *
#*********************************************************

# Analyze and Elaborate the HDL files
read_hdl -sv ${myFiles}
# https://www.csee.umbc.edu/~tinoosh/cmpe641/tutorials/rc/rc_commandref.pdf, page 285
#elaborate -parameters {{EXP_IN_A ${a_e}} {FRAC_IN_A ${a_f}} {EXP_IN_B ${b_e}} {FRAC_IN_B ${b_f}} {FRAC_IN_A ${acc_e}} {FRAC_IN_A ${acc_f}} {TRAILING_BITS ${t_b}}} ${basename}
set lst [list ${tile} ${a_e} ${a_f} ${b_e} ${b_f} ${acc_d}]
elaborate -parameters ${lst} ${basename}

# Apply Constraints and generate clocks
set clock [define_clock -period ${myPeriod_ps} -name ${myClk} [clock_ports]]	
external_delay -input $myInDelay_ns -clock ${myClk} [find / -port ports_in/*]
external_delay -output $myOutDelay_ns -clock ${myClk} [find / -port ports_out/*]

# Sets transition to default values for Synopsys SDC format, 
# fall/rise 400ps
dc::set_clock_transition .4 $myClk

# check that the design is OK so far
check_design -unresolved
report timing -lint

# Synthesize the design to the target library
synthesize -to_mapped

# Write out the reports
report timing > ${basename}_${runname}_timing.rep
report gates  > ${basename}_${runname}_cell.rep
report area > ${basename}_${runname}_area.rep
report power  > ${basename}_${runname}_power.rep

# Write out the structural Verilog and sdc files
write_hdl -mapped >  ${basename}_${runname}.v
write_sdc >  ${basename}_${runname}.sdc

quit

