#!/usr/bin/sh

addr=$1
acc_d=$2
acc_f=$3
f_e=$4
f_f=$5
period=$6

exp_addr=./${addr}/ktf_asic_ACC_${acc_d}_${acc_f}_F_${f_e}_${f_f}_P${period}

make ktf_asic  addr=${exp_addr}  acc_d=${acc_d} acc_f=${acc_f} f_e=${f_e} f_f=${f_f} period=${period}
