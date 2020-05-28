#!/usr/bin/sh

addr=$1
a_e=$2
b_e=$3
acc_d=$4
period=$5

exp_addr=./${addr}/llk_POC_asic_A_${a_e}_B_${b_e}_ACC_${acc_d}_P${period}

make llk_POC_asic  addr=${exp_addr}  a_e=${a_e} b_e=${b_e} acc_d=${acc_d} period=${period}
