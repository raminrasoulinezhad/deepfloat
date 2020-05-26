#############################################################################
# FPGA tests

make fff_fpga  addr=./paper/fff_fpga_A_5_3_B_4_3_ACC_6_9   a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e &
#FP16 Mul, FP16 Add (not IEEE)
#FP32 Mul, FP32 Add (not IEEE)
make ffk_fpga  addr=./paper/ffk_fpga_A_4_5_B_2_5_ACC_31    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_2_B_2_3_ACC_20    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_4_B_3_4_ACC_27    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_1_B_2_2_ACC_20    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
#Fixed point 8 bit, Add = 16 

# POCs
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_4_5_B_2_5_ACC_31    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  part=xczu28dr-ffvg1517-2-e &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_2_B_2_3_ACC_20    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  part=xczu28dr-ffvg1517-2-e &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_4_B_3_4_ACC_27    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  part=xczu28dr-ffvg1517-2-e &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_1_B_2_2_ACC_20    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  part=xczu28dr-ffvg1517-2-e &

make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_4_B_4_ACC_32        a_e=4  b_e=4  acc_d=32  part=xczu28dr-ffvg1517-2-e &
make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_3_B_3_ACC_16        a_e=3  b_e=3  acc_d=16  part=xczu28dr-ffvg1517-2-e &

make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_16    a_s=8  b_s=8  acc_d=16  part=xczu28dr-ffvg1517-2-e &
make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_32    a_s=8  b_s=8  acc_d=32  part=xczu28dr-ffvg1517-2-e &

# one cycle
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_5_3_B_4_3_ACC_6_9 a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e &

#############################################################################
# ASIC tests

make fff_asic  addr=./paper/fff_asic_A_5_3_B_4_3_ACC_6_9   a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9
#FP16 Mul, FP16 Add (not IEEE)
#FP32 Mul, FP32 Add (not IEEE)
make ffk_asic  addr=./paper/ffk_asic_A_4_5_B_2_5_ACC_31    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0
make ffk_asic  addr=./paper/ffk_asic_A_3_2_B_2_3_ACC_20    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0
make ffk_asic  addr=./paper/ffk_asic_A_3_4_B_3_4_ACC_27    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0
make ffk_asic  addr=./paper/ffk_asic_A_3_1_B_2_2_ACC_20    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0
#Fixed point 8 bit, Add = 16 
#Log 5 bit, Add = 32 
#Log 4 bit, Add = 16 


# POCs
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_4_5_B_2_5_ACC_31    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_2_B_2_3_ACC_20    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_4_B_3_4_ACC_27    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_1_B_2_2_ACC_20    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20 

make llk_POC_asic  addr=./paper/llk_POC_asic_A_4_B_4_ACC_32        a_e=4  b_e=4  acc_d=32 
make llk_POC_asic  addr=./paper/llk_POC_asic_A_3_B_3_ACC_16        a_e=3  b_e=3  acc_d=16 

make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_16    a_s=8  b_s=8  acc_d=16 
make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_32    a_s=8  b_s=8  acc_d=32 

# one cycle
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_5_3_B_4_3_ACC_6_9 a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9


#############################################################################
# Test notes 
# 	1) in the case of ffk models (it does not include POC models), if (acc_d == 0) then "acc_extra" is used. Else add_d is affecting the output width
