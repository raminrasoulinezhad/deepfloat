#############################################################################
# FPGA tests
#############################################################################

###########################
# 1000MHz
make fff_fpga  addr=./paper/fff_fpga_A_5_3_B_4_3_ACC_6_9_MHz1000    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make fff_fpga  addr=./paper/fff_fpga_A_6_9_B_6_9_ACC_6_9_MHz1000    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make fff_fpga  addr=./paper/fff_fpga_A_8_23_B_8_23_ACC_8_23_MHz1000 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23     part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &

make ffk_fpga  addr=./paper/ffk_fpga_A_4_5_B_2_5_ACC_31_MHz1000    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_2_B_2_3_ACC_20_MHz1000    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_4_B_3_4_ACC_27_MHz1000    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_1_B_2_2_ACC_20_MHz1000    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
wait
# POCs
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_4_5_B_2_5_ACC_31_MHz1000    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_2_B_2_3_ACC_20_MHz1000    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_4_B_3_4_ACC_27_MHz1000    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_1_B_2_2_ACC_20_MHz1000    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &

make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_4_B_4_ACC_32_MHz1000        a_e=4  b_e=4  acc_d=32  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_3_B_3_ACC_16_MHz1000        a_e=3  b_e=3  acc_d=16  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
wait
make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_16_MHz1000    a_s=8  b_s=8  acc_d=16  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_32_MHz1000    a_s=8  b_s=8  acc_d=32  part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &

# one cycle
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_8_23_B_8_23_ACC_8_23_MHz1000 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23     part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_5_3_B_4_3_ACC_6_9_MHz1000    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_6_9_B_6_9_ACC_6_9_MHz1000    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_1000.xdc &
wait


###########################
# 750MHz
make fff_fpga  addr=./paper/fff_fpga_A_5_3_B_4_3_ACC_6_9_MHz750    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make fff_fpga  addr=./paper/fff_fpga_A_6_9_B_6_9_ACC_6_9_MHz750    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make fff_fpga  addr=./paper/fff_fpga_A_8_23_B_8_23_ACC_8_23_MHz750 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23     part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &

make ffk_fpga  addr=./paper/ffk_fpga_A_4_5_B_2_5_ACC_31_MHz750    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_2_B_2_3_ACC_20_MHz750    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_4_B_3_4_ACC_27_MHz750    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_1_B_2_2_ACC_20_MHz750    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
wait
# POCs
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_4_5_B_2_5_ACC_31_MHz750    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_2_B_2_3_ACC_20_MHz750    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_4_B_3_4_ACC_27_MHz750    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_1_B_2_2_ACC_20_MHz750    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &

make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_4_B_4_ACC_32_MHz750        a_e=4  b_e=4  acc_d=32  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_3_B_3_ACC_16_MHz750        a_e=3  b_e=3  acc_d=16  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
wait
make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_16_MHz750    a_s=8  b_s=8  acc_d=16  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_32_MHz750    a_s=8  b_s=8  acc_d=32  part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &

# one cycle
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_8_23_B_8_23_ACC_8_23_MHz750 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23     part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_5_3_B_4_3_ACC_6_9_MHz750    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_6_9_B_6_9_ACC_6_9_MHz750    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_750.xdc &
wait


###########################
# 500MHz
make fff_fpga  addr=./paper/fff_fpga_A_5_3_B_4_3_ACC_6_9_MHz500    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make fff_fpga  addr=./paper/fff_fpga_A_6_9_B_6_9_ACC_6_9_MHz500    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make fff_fpga  addr=./paper/fff_fpga_A_8_23_B_8_23_ACC_8_23_MHz500 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23     part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &

make ffk_fpga  addr=./paper/ffk_fpga_A_4_5_B_2_5_ACC_31_MHz500    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_2_B_2_3_ACC_20_MHz500    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_4_B_3_4_ACC_27_MHz500    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make ffk_fpga  addr=./paper/ffk_fpga_A_3_1_B_2_2_ACC_20_MHz500    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  acc_extra=0  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
wait
# POCs
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_4_5_B_2_5_ACC_31_MHz500    a_e=4  a_f=5  b_e=2  b_f=5  acc_d=31  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_2_B_2_3_ACC_20_MHz500    a_e=3  a_f=2  b_e=2  b_f=3  acc_d=20  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_4_B_3_4_ACC_27_MHz500    a_e=3  a_f=4  b_e=3  b_f=4  acc_d=27  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make ffk_POC_fpga  addr=./paper/ffk_POC_fpga_A_3_1_B_2_2_ACC_20_MHz500    a_e=3  a_f=1  b_e=2  b_f=2  acc_d=20  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &

make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_4_B_4_ACC_32_MHz500        a_e=4  b_e=4  acc_d=32  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make llk_POC_fpga  addr=./paper/llk_POC_fpga_A_3_B_3_ACC_16_MHz500        a_e=3  b_e=3  acc_d=16  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
wait
make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_16_MHz500    a_s=8  b_s=8  acc_d=16  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make fxfxk_POC_fpga  addr=./paper/fxfxk_POC_fpga_A_8_B_8_ACC_32_MHz500    a_s=8  b_s=8  acc_d=32  part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &

# one cycle
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_8_23_B_8_23_ACC_8_23_MHz500 a_e=8  a_f=23 b_e=8  b_f=23 acc_e=8   acc_f=23     part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_5_3_B_4_3_ACC_6_9_MHz500    a_e=5  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
make fff_scyc_fpga  addr=./paper/fff_scyc_fpga_A_6_9_B_6_9_ACC_6_9_MHz500    a_e=6  a_f=9  b_e=6  b_f=9  acc_e=6   acc_f=9      part=xczu28dr-ffvg1517-2-e cons=Cons_500.xdc &
wait
