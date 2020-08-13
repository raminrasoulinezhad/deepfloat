############################################################################
mkdir -p paper_maolin

make fff_asic  addr=./paper_maolin/fff_asic_A_5_10_B_5_10_ACC_5_10_MHz250    a_e=5  a_f=10  b_e=5  b_f=10  acc_e=5   acc_f=10   period=4000
make fff_asic  addr=./paper_maolin/fff_asic_A_5_10_B_5_10_ACC_5_10_MHz500    a_e=5  a_f=10  b_e=5  b_f=10  acc_e=5   acc_f=10   period=2000
make fff_asic  addr=./paper_maolin/fff_asic_A_5_10_B_5_10_ACC_5_10_MHz750    a_e=5  a_f=10  b_e=5  b_f=10  acc_e=5   acc_f=10   period=1333
make fff_asic  addr=./paper_maolin/fff_asic_A_5_10_B_5_10_ACC_5_10_MHz1000   a_e=5  a_f=10  b_e=5  b_f=10  acc_e=5   acc_f=10   period=1000
#
make fff_asic  addr=./paper_maolin/fff_asic_A_8_7_B_8_7_ACC_8_7_MHz250    a_e=8  a_f=7  b_e=8  b_f=7  acc_e=8   acc_f=7   period=4000
make fff_asic  addr=./paper_maolin/fff_asic_A_8_7_B_8_7_ACC_8_7_MHz500    a_e=8  a_f=7  b_e=8  b_f=7  acc_e=8   acc_f=7   period=2000
make fff_asic  addr=./paper_maolin/fff_asic_A_8_7_B_8_7_ACC_8_7_MHz750    a_e=8  a_f=7  b_e=8  b_f=7  acc_e=8   acc_f=7   period=1333
make fff_asic  addr=./paper_maolin/fff_asic_A_8_7_B_8_7_ACC_8_7_MHz1000   a_e=8  a_f=7  b_e=8  b_f=7  acc_e=8   acc_f=7   period=1000
#
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_16_MHz250     a_s=8  b_s=8  acc_d=16 period=4000
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_16_MHz500     a_s=8  b_s=8  acc_d=16 period=2000
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_16_MHz750     a_s=8  b_s=8  acc_d=16 period=1333
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_16_MHz1000    a_s=8  b_s=8  acc_d=16 period=1000
#
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_32_MHz250     a_s=8  b_s=8  acc_d=32 period=4000
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_32_MHz500     a_s=8  b_s=8  acc_d=32 period=2000
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_32_MHz750     a_s=8  b_s=8  acc_d=32 period=1333
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_8_B_8_ACC_32_MHz1000    a_s=8  b_s=8  acc_d=32 period=1000
#
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_16_B_16_ACC_32_MHz250     a_s=16  b_s=16  acc_d=32 period=4000
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_16_B_16_ACC_32_MHz500     a_s=16  b_s=16  acc_d=32 period=2000
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_16_B_16_ACC_32_MHz750     a_s=16  b_s=16  acc_d=32 period=1333
make fxfxk_POC_asic  addr=./paper_maolin/fxfxk_POC_asic_A_16_B_16_ACC_32_MHz1000    a_s=16  b_s=16  acc_d=32 period=1000
#

#https://arxiv.org/pdf/1812.08011.pdf
# 1,5,2 x 1,5,2 + 1,5,10
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_5_10_MHz250    a_e=5  a_f=2  b_e=5  b_f=2  acc_e=5   acc_f=10   period=4000
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_5_10_MHz500    a_e=5  a_f=2  b_e=5  b_f=2  acc_e=5   acc_f=10   period=2000
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_5_10_MHz750    a_e=5  a_f=2  b_e=5  b_f=2  acc_e=5   acc_f=10   period=1333
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_5_10_MHz1000   a_e=5  a_f=2  b_e=5  b_f=2  acc_e=5   acc_f=10   period=1000
#
#https://papers.nips.cc/paper/8736-hybrid-8-bit-floating-point-hfp8-training-and-inference-for-deep-neural-networks.pdf
# 1,4,3 x 1,4,3 + 1,6,9
make fff_asic  addr=./paper_maolin/fff_asic_A_4_3_B_4_3_ACC_6_9_MHz250    a_e=4  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=4000
make fff_asic  addr=./paper_maolin/fff_asic_A_4_3_B_4_3_ACC_6_9_MHz500    a_e=4  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=2000
make fff_asic  addr=./paper_maolin/fff_asic_A_4_3_B_4_3_ACC_6_9_MHz750    a_e=4  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=1333
make fff_asic  addr=./paper_maolin/fff_asic_A_4_3_B_4_3_ACC_6_9_MHz1000   a_e=4  a_f=3  b_e=4  b_f=3  acc_e=6   acc_f=9   period=1000
#https://arxiv.org/pdf/2001.05674.pdf
# 1,5,2 x 1,5,2 + 1,8,23
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_8_23_MHz250    a_e=5  a_f=2  b_e=5  b_f=2  acc_e=8   acc_f=23   period=4000
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_8_23_MHz500    a_e=5  a_f=2  b_e=5  b_f=2  acc_e=8   acc_f=23   period=2000
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_8_23_MHz750    a_e=5  a_f=2  b_e=5  b_f=2  acc_e=8   acc_f=23   period=1333
make fff_asic  addr=./paper_maolin/fff_asic_A_5_2_B_5_2_ACC_8_23_MHz1000   a_e=5  a_f=2  b_e=5  b_f=2  acc_e=8   acc_f=23   period=1000
#
