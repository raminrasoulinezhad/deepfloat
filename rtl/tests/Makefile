# Please source vivado / rc:
# Vivado:
#	source /opt/Xilinx/Vivado/2018.2/settings64.sh
# rc source:
# 	cd ~/setup/setup_working_dir_130nm/
#	source .cshrc_hcmos9a_v1 

.PHONY:  ffk_fpga  fff_fpga  clean_tabulations  clean  


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
	passingstring="array set paramters [list a_e $(a_e) a_f $(a_f) b_e $(b_e) b_f $(b_f) acc_e $(acc_e) acc_f $(acc_f)]"
	rc -f fff_asic.tcl -ex "$(passingstring)"

tabulate:
	python3 tabulate.py 

clean_tabulations:
	rm -rf tabulate_*.txt

clean:
	rm -rf vivado* tabulate_*.txt
	rm -rf project_
	rm -rf nohup.out
	rm -rf rc.* *initialtest* fv
