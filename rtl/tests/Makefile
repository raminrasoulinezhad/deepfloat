# Please source vivado / rc:
# Vivado:
#	source /opt/Xilinx/Vivado/2018.2/settings64.sh
# rc source:
# 	cd ~/setup/setup_working_dir_130nm/
#	source .cshrc_hcmos9a_v1
#	cd ~/workspace/deepfloat/rtl/tests 
#
# ASIC & tcl & Cadence RTL compiler:
# 	source: https://www.csee.umbc.edu/~tinoosh/cmpe641/tutorials/rc/rc_commandref.pdf, page 90

.PHONY:  ffk_fpga  fff_fpga  ffk_POC_fpga  llk_POC_fpga  fxfxk_POC_fpga  fff_scyc_fpga  ktf_fpga  fff_asic  ffk_asic  ffk_POC_asic  llk_POC_asic  fxfxk_POC_asic  fff_scyc_asic  ktf_asic  clean_tabulations  clean fxfxMult_POC_asic  fxfxAdd_POC_asic  shifter_POC_asic fff_asic_yosys

#################
## FPGA tests
#################
fff_fpga:
	#FloatMultiplyAddWithFloat
	rm -rf $(addr)
	vivado -mode batch -source fff_fpga.tcl -tclargs $(addr) $(a_e) $(a_f) $(b_e) $(b_f) $(acc_e) $(acc_f) $(part) $(cons)
	rm -rf vivado*

ffk_fpga:
	#FloatMultiplyAdd
	rm -rf $(addr)
	vivado -mode batch -source ffk_fpga.tcl -tclargs $(addr) $(a_e) $(a_f) $(b_e) $(b_f) $(acc_d) $(acc_extra) $(part) $(cons)
	rm -rf vivado*

ffk_POC_fpga:
	#FloatMultiplyAdd_POC
	rm -rf $(addr)
	vivado -mode batch -source ffk_POC_fpga.tcl -tclargs $(addr) $(a_e) $(a_f) $(b_e) $(b_f) $(acc_d) $(part) $(cons)
	rm -rf vivado*

llk_POC_fpga:
	#LogMultiplyAdd_POC
	rm -rf $(addr)
	vivado -mode batch -source llk_POC_fpga.tcl -tclargs $(addr) $(a_e) $(b_e) $(acc_d) $(part) $(cons)
	rm -rf vivado*

fxfxk_POC_fpga:
	#FixedMultiplyAdd_POC
	rm -rf $(addr)
	vivado -mode batch -source fxfxk_POC_fpga.tcl -tclargs $(addr) $(a_s) $(b_s) $(acc_d) $(part) $(cons)
	rm -rf vivado*

fff_scyc_fpga:
	#FloatMultiplyAddWithFloat_SCYC
	rm -rf $(addr)
	vivado -mode batch -source fff_scyc_fpga.tcl -tclargs $(addr) $(a_e) $(a_f) $(b_e) $(b_f) $(acc_e) $(acc_f) $(part) $(cons)
	rm -rf vivado*

ktf_fpga:
	#KulischToFloat
	rm -rf $(addr)
	vivado -mode batch -source ktf_fpga.tcl -tclargs $(addr) $(acc_d) $(acc_f) $(f_e) $(f_f) $(part) $(cons)
	rm -rf vivado*


SystolicGrid_ffk_fpga:
	#SystolicGrid_ffk
	rm -rf $(addr)
	vivado -mode batch -source SystolicGrid_ffk_fpga.tcl -tclargs $(addr) $(a_e) $(a_f) $(b_e) $(b_f) $(acc_d) $(part) $(cons) $(tile)
	rm -rf vivado*

#################
## ASIC tests
#################
fff_asic:
	#FloatMultiplyAddWithFloat
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fff_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_e $(acc_e) acc_f $(acc_f) period $(period)]" -E

ffk_asic:
	#FloatMultiplyAdd
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../ffk_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d) acc_extra $(acc_extra) period $(period)]" -E 

ffk_POC_asic:
	#FloatMultiplyAdd_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../ffk_POC_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d) period $(period)]" -E

llk_POC_asic:
	#LogMultiplyAdd_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../llk_POC_asic.tcl -ex "array set paramters [list a_e $(a_e) b_e $(b_e) acc_d $(acc_d) period $(period)]" -E 

fxfxk_POC_asic:
	#FixedMultiplyAdd_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fxfxk_POC_asic.tcl -ex "array set paramters [list a_s $(a_s) b_s $(b_s) acc_d $(acc_d) period $(period)]" -E 

fff_scyc_asic:
	#FloatMultiplyAddWithFloat_SCYC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fff_scyc_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_e $(acc_e) acc_f $(acc_f) period $(period)]" -E 

ktf_asic:
	#KulischToFloat
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../ktf_asic.tcl -ex "array set paramters [list acc_d $(acc_d) acc_f $(acc_f) f_e $(f_e) f_f $(f_f) period $(period)]" -E 

SystolicGrid_ffk_asic:
	#SystolicGrid_ffk
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../SystolicGrid_ffk_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d) period $(period) tile $(tile)]" -E

SystolicGrid_fff_asic:
	#SystolicGrid_fff
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../SystolicGrid_fff_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_e $(acc_e) acc_f $(acc_f) period $(period) tile $(tile)]" -E

PaperIntegerSystolicGrid_asic:
	#PaperIntegerSystolicGrid
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../PaperIntegerSystolicGrid_asic.tcl -ex "array set paramters [list a_b_s $(a_b_s) acc_d $(acc_d) period $(period) tile $(tile)]" -E 

# These commands are provided for asic. not for fpga side. It's a TODO
fxfxMult_POC_asic:
	#FixedMultiply_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fxfxMult_POC_asic.tcl -ex "array set paramters [list a_s $(a_s) b_s $(b_s) period $(period)]" -E 

fxfxAdd_POC_asic:
	#FixedAdd_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fxfxAdd_POC_asic.tcl -ex "array set paramters [list a_s $(a_s) period $(period)]" -E 

shifter_POC_asic:
	#Shifter_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../shifter_POC_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d) period $(period)]" -E

fff_asic_yosys:
	yosys fff.ys | tee fff.log

#################
## Tabulations
#################
tabulate:
	python3 tabulate.py 


#################
## Cleaners
#################
clean_tabulations:
	rm -rf tabulate_2*.txt

clean:
	rm -rf vivado* tabulate_*.txt
	rm -rf nohup.out
	rm -rf rc.* *initialtest* fv
