# Please source vivado / rc:
# Vivado:
#	source /opt/Xilinx/Vivado/2018.2/settings64.sh
# rc source:
# 	cd ~/setup/setup_working_dir_130nm/
#	source .cshrc_hcmos9a_v1
#	cd ~/workspace/deepfloat/rtl/tests 

.PHONY:  ffk_fpga  fff_fpga  fff_asic  ffk_asic  clean_tabulations  clean  


ffk_fpga:
	#FloatMultiplyAdd
	rm -rf $(addr)
	vivado -mode batch -source ffk_fpga.tcl -tclargs $(addr) $(a_e) $(a_f) $(b_e) $(b_f) $(acc_d) $(acc_extra) $(part)
	rm -rf vivado*

fff_fpga:
	#FloatMultiplyAddWithFloat
	rm -rf $(addr)
	vivado -mode batch -source ffk_fpga.tcl -tclargs $(addr) $(a_e) $(a_f) $(b_e) $(b_f) $(acc_e) $(acc_f) $(part)
	rm -rf vivado*

fff_asic:
	# source: https://www.csee.umbc.edu/~tinoosh/cmpe641/tutorials/rc/rc_commandref.pdf, page 90
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../fff_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_e $(acc_e) acc_f $(acc_f)]"

ffk_asic:
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../ffk_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d) acc_extra $(acc_extra)]"

ffk_POC_asic:
	rm -rf $(addr)
	mkdir $(addr)
	cd $(addr) && rc -f ../../ffk_POC_asic.tcl -ex "array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_d $(acc_d)]"

tabulate:
	python3 tabulate.py 

clean_tabulations:
	rm -rf tabulate_*.txt

clean:
	rm -rf vivado* tabulate_*.txt
	rm -rf project_
	rm -rf nohup.out
	rm -rf rc.* *initialtest* fv
