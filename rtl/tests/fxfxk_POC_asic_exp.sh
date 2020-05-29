#!/usr/bin/sh

addr=$1
a_s=$2
b_s=$3
acc_d=$4
period=$5

exp_addr=./${addr}/fxfxk_POC_asic_A_${a_e}_${a_f}_B_${b_e}_${b_f}_ACC_${acc_d}_P${period}

make fxfxk_POC_asic  addr=${exp_addr}  a_e=${a_e} a_f=${a_f} b_e=${b_e} b_f=${b_f} acc_d=${acc_d} acc_extra=0 period=${period}
