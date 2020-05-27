#############################################################################
# ASIC tests

###########################
# 1000MHz
make fff_asic  addr=./paper/fff_asic_A_5_3_B_4_3_ACC_6_9_MHz1000    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=1000
make fff_asic  addr=./paper/fff_asic_A_6_9_B_6_9_ACC_6_9_MHz1000    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9	period=1000
make fff_asic  addr=./paper/fff_asic_A_8_23_B_8_23_ACC_8_23_MHz1000 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23	period=1000

make ffk_asic  addr=./paper/ffk_asic_A_4_5_B_2_5_ACC_31_MHz1000    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  period=1000
make ffk_asic  addr=./paper/ffk_asic_A_3_2_B_2_3_ACC_20_MHz1000    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  period=1000
make ffk_asic  addr=./paper/ffk_asic_A_3_4_B_3_4_ACC_27_MHz1000    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  period=1000
make ffk_asic  addr=./paper/ffk_asic_A_3_1_B_2_2_ACC_20_MHz1000    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  period=1000

# POCs
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_4_5_B_2_5_ACC_31_MHz1000    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  period=1000
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_2_B_2_3_ACC_20_MHz1000    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  period=1000
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_4_B_3_4_ACC_27_MHz1000    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  period=1000
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_1_B_2_2_ACC_20_MHz1000    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  period=1000 

make llk_POC_asic  addr=./paper/llk_POC_asic_A_4_B_4_ACC_32_MHz1000        a_e=4  b_e=4  acc_d=32 period=1000
make llk_POC_asic  addr=./paper/llk_POC_asic_A_3_B_3_ACC_16_MHz1000        a_e=3  b_e=3  acc_d=16 period=1000

make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_16_MHz1000    a_s=8  b_s=8  acc_d=16 period=1000
make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_32_MHz1000    a_s=8  b_s=8  acc_d=32 period=1000

# one cycle
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_5_3_B_4_3_ACC_6_9_MHz1000    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=1000 
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_6_9_B_6_9_ACC_6_9_MHz1000    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9   period=1000
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_8_23_B_8_23_ACC_8_23_MHz1000 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23  period=1000



###########################
# 750MHz
make fff_asic  addr=./paper/fff_asic_A_5_3_B_4_3_ACC_6_9_MHz750    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=1333
make fff_asic  addr=./paper/fff_asic_A_6_9_B_6_9_ACC_6_9_MHz750    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9	period=1333
make fff_asic  addr=./paper/fff_asic_A_8_23_B_8_23_ACC_8_23_MHz750 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23	period=1333

make ffk_asic  addr=./paper/ffk_asic_A_4_5_B_2_5_ACC_31_MHz750    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  period=1333
make ffk_asic  addr=./paper/ffk_asic_A_3_2_B_2_3_ACC_20_MHz750    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  period=1333
make ffk_asic  addr=./paper/ffk_asic_A_3_4_B_3_4_ACC_27_MHz750    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  period=1333
make ffk_asic  addr=./paper/ffk_asic_A_3_1_B_2_2_ACC_20_MHz750    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  period=1333

# POCs
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_4_5_B_2_5_ACC_31_MHz750    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  period=1333
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_2_B_2_3_ACC_20_MHz750    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  period=1333
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_4_B_3_4_ACC_27_MHz750    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  period=1333
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_1_B_2_2_ACC_20_MHz750    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  period=1333 

make llk_POC_asic  addr=./paper/llk_POC_asic_A_4_B_4_ACC_32_MHz750        a_e=4  b_e=4  acc_d=32 period=1333
make llk_POC_asic  addr=./paper/llk_POC_asic_A_3_B_3_ACC_16_MHz750        a_e=3  b_e=3  acc_d=16 period=1333

make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_16_MHz750    a_s=8  b_s=8  acc_d=16 period=1333
make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_32_MHz750    a_s=8  b_s=8  acc_d=32 period=1333

# one cycle
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_5_3_B_4_3_ACC_6_9_MHz750    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=1333 
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_6_9_B_6_9_ACC_6_9_MHz750    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9   period=1333
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_8_23_B_8_23_ACC_8_23_MHz750 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23  period=1333



###########################
# 500MHz
make fff_asic  addr=./paper/fff_asic_A_5_3_B_4_3_ACC_6_9_MHz500    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=2000
make fff_asic  addr=./paper/fff_asic_A_6_9_B_6_9_ACC_6_9_MHz500    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9	period=2000
make fff_asic  addr=./paper/fff_asic_A_8_23_B_8_23_ACC_8_23_MHz500 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23	period=2000

make ffk_asic  addr=./paper/ffk_asic_A_4_5_B_2_5_ACC_31_MHz500    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  period=2000
make ffk_asic  addr=./paper/ffk_asic_A_3_2_B_2_3_ACC_20_MHz500    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  period=2000
make ffk_asic  addr=./paper/ffk_asic_A_3_4_B_3_4_ACC_27_MHz500    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  period=2000
make ffk_asic  addr=./paper/ffk_asic_A_3_1_B_2_2_ACC_20_MHz500    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  period=2000

# POCs
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_4_5_B_2_5_ACC_31_MHz500    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  period=2000
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_2_B_2_3_ACC_20_MHz500    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  period=2000
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_4_B_3_4_ACC_27_MHz500    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  period=2000
make ffk_POC_asic  addr=./paper/ffk_POC_asic_A_3_1_B_2_2_ACC_20_MHz500    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  period=2000 

make llk_POC_asic  addr=./paper/llk_POC_asic_A_4_B_4_ACC_32_MHz500        a_e=4  b_e=4  acc_d=32 period=2000
make llk_POC_asic  addr=./paper/llk_POC_asic_A_3_B_3_ACC_16_MHz500        a_e=3  b_e=3  acc_d=16 period=2000

make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_16_MHz500    a_s=8  b_s=8  acc_d=16 period=2000
make fxfxk_POC_asic  addr=./paper/fxfxk_POC_asic_A_8_B_8_ACC_32_MHz500    a_s=8  b_s=8  acc_d=32 period=2000

# one cycle
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_5_3_B_4_3_ACC_6_9_MHz500    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=2000 
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_6_9_B_6_9_ACC_6_9_MHz500    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9   period=2000
make fff_scyc_asic  addr=./paper/fff_scyc_asic_A_8_23_B_8_23_ACC_8_23_MHz500 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23  period=2000
