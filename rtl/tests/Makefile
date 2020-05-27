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

.PHONY:  ffk_fpga  fff_fpga  ffk_POC_fpga  llk_POC_fpga  fxfxk_POC_fpga  fff_scyc_fpga  fff_asic  ffk_asic  ffk_POC_asic  llk_POC_asic  fxfxk_POC_asic  fff_scyc_asic  clean_tabulations  clean 

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


#################
## ASIC tests
#################
fff_asic:
	#FloatMultiplyAddWithFloat
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fff_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_e $(acc_e) acc_f $(acc_f) period $(period)]"

ffk_asic:
	#FloatMultiplyAdd
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../ffk_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d) acc_extra $(acc_extra) period $(period)]"

ffk_POC_asic:
	#FloatMultiplyAdd_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../ffk_POC_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d) period $(period)]"

llk_POC_asic:
	#LogMultiplyAdd_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../llk_POC_asic.tcl -ex "array set paramters [list a_e $(a_e) b_e $(b_e) acc_d $(acc_d) period $(period)]"

fxfxk_POC_asic:
	#FixedMultiplyAdd_POC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fxfxk_POC_asic.tcl -ex "array set paramters [list a_s $(a_s) b_s $(b_s) acc_d $(acc_d) period $(period)]"

fff_scyc_asic:
	#FloatMultiplyAddWithFloat_SCYC
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fff_scyc_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_e $(acc_e) acc_f $(acc_f) period $(period)]"


#################
## Tabulations
#################
tabulate:
	python3 tabulate.py 


#################
## Cleaners
#################
clean_tabulations:
	rm -rf tabulate_*.txt

clean:
	rm -rf vivado* tabulate_*.txt
	rm -rf project_
	rm -rf nohup.out
	rm -rf rc.* *initialtest* fv
