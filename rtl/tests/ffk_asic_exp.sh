#!/usr/bin/sh

addr=$1
a_e=$2
a_f=$3
b_e=$4
b_f=$5
acc_d=$6
period=$8

exp_addr=./${addr}/ffk_asic_A_${a_e}_${a_f}_B_${b_e}_${b_f}_ACC_${acc_d}_P${period}

make ffk_asic  addr=${exp_addr}  a_e=${a_e} a_f=${a_f} b_e=${b_e} b_f=${b_f} acc_d=${acc_d} acc_extra=0 period=${period}
