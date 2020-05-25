

make fff_fpga  addr=./paper/fff_fpga_A_5_3_B_4_3_ACC_6_9   a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e &
#FP16 Mul, FP16 Add (not IEEE)
#FP32 Mul, FP32 Add (not IEEE)
make ffk_fpga  addr=./paper/ffk_fpga_A_4_5_B_2_5_ACC_31    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_2_B_2_3_ACC_20    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_4_B_3_4_ACC_27    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_1_B_2_2_ACC_20    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e &
#Fixed point 8 bit, Add = 16 
#Log 5 bit, Add = 32 
#Log 4 bit, Add = 16 

exit

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



# Sample 
# # if (acc_d == 0) then "acc_extra" is used. Else add_d  is used
# make ffk_fpga  addr=./paper/ffk_fpga_A_5_3_B_8_6_ACC_32_8  a_e=5  a_f=3  b_e=8  b_f=6  acc_d=32 acc_extra=8  part=xczu28dr-ffvg1517-2-e &
# make fff_fpga  addr=./paper/fff_fpga_A_5_3_B_8_6_ACC_8_8   a_e=5  a_f=3  b_e=8  b_f=6  acc_e=8  acc_f=8      part=xczu28dr-ffvg1517-2-e &

# make fff_asic  addr=./paper/fff_asic_A_5_3_B_4_3_ACC_6_9   a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6  acc_f=9
# make ffk_asic  addr=./paper/ffk_asic_A_5_3_B_4_3_ACC_6_9   a_e=5  a_f=3  b_e=4  b_f=3  acc_d=6  acc_extra=9

