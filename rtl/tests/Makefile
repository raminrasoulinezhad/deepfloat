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

clean_tabulations:
	rm -rf tabulate_*.txt

clean:
	rm -rf vivado* tabulate_*.txt
	rm -rf project_
	rm -rf nohup.out
