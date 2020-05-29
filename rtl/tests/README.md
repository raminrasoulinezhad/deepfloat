# Experiments

## paper selected experiments: 
1) run the "exps_asic.sh" and "exps_fpga.sh" scripts. 
2) run the following command:
	
	python tabulate.py paper/

## Sweep experiments: 
	
	bash ./runs_asic.sh
	bash ./runs_fpga.sh 	# not ready yet

To tabulate them:

	python  tabulate.py  --dir=paper_asic_auto/
	python  tabulate.py  --dir=paper_fpga_auto/

# Experiment notes 

1) in the case of ffk models (it does not include POC models), if (acc_d == 0) then "acc_extra" is used. Else add_d is affecting the output width
