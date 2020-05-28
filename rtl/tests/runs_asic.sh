#!/usr/bin/sh

mkdir -p ./paper_asic_auto

NUM_CORES=16

#parallel --bar --gnu -j${NUM_CORES} --header : \
#    'bash ./fff_asic_exp.sh paper_asic_auto {a_e} {a_f} {b_e} {b_f} {acc_e} {acc_f} {period}' \
#    ::: a_e 0 1 2 3 4 5 \
#    ::: a_f 0 1 2 3 4 5 \
#    ::: b_e 0 1 2 3 4 5 \
#    ::: b_f 0 1 2 3 4 5 \
#    ::: acc_e 0 1 2 3 4 5 \
#    ::: acc_f 0 1 2 3 4 5 \
#    ::: period 1333 2000

parallel --bar --gnu -j${NUM_CORES} --header : \
    'bash ./fff_scyc_asic_exp.sh paper_asic_auto {a_e} {a_f} {b_e} {b_f} {acc_e} {acc_f} {period}' \
    ::: a_e 1 2 3 4 5 \
    ::: a_f 1 2 3 4 5 \
    ::: b_e 1 2 3 4 5 \
    ::: b_f 1 2 3 4 5 \
    ::: acc_e 1 2 3 4 5 \
    ::: acc_f 1 2 3 4 5 \
    ::: period 1333 

#parallel --bar --gnu -j${NUM_CORES} --header : \
#    'bash ./ffk_asic_exp.sh paper_asic_auto {a_e} {a_f} {b_e} {b_f} {acc_d} {period}' \
#    ::: a_e 0 1 2 3 4 5 \
#    ::: a_f 0 1 2 3 4 5 \
#    ::: b_e 0 1 2 3 4 5 \
#    ::: b_f 0 1 2 3 4 5 \
#    ::: acc_d 16 32 \
#    ::: period 1333 2000

parallel --bar --gnu -j${NUM_CORES} --header : \
    'bash ./ffk_POC_asic_exp.sh paper_asic_auto {a_e} {a_f} {b_e} {b_f} {acc_d} {period}' \
    ::: a_e 1 2 3 4 5 \
    ::: a_f 1 2 3 4 5 \
    ::: b_e 1 2 3 4 5 \
    ::: b_f 1 2 3 4 5 \
    ::: acc_d 16 32 \
    ::: period 1333

parallel --bar --gnu -j${NUM_CORES} --header : \
    'bash ./fxfxk_POC_asic_exp.sh paper_asic_auto {a_s} {b_s} {acc_d} {period}' \
    ::: a_s 1 2 3 4 5 \
    ::: b_s 1 2 3 4 5 \
    ::: acc_d 16 24 32 \
    ::: period 1333 

parallel --bar --gnu -j${NUM_CORES} --header : \
    'bash ./ktf_asic_exp.sh paper_asic_auto {acc_d} {acc_f} {f_e} {f_f} {period}' \
    ::: acc_d 10 12 14 16 18 \
    ::: acc_f 10 12 14 16 18 \
    ::: f_e 6 8 \
    ::: f_f 9 23 \
    ::: period 1333 

parallel --bar --gnu -j${NUM_CORES} --header : \
    'bash ./llk_POC_asic_exp.sh paper_asic_auto {a_e} {b_e} {acc_d} {period}' \
    ::: a_e 0 1 2 3 4 5 \
    ::: b_e 0 1 2 3 4 5 \
    ::: acc_d 16 24 32 \
    ::: period 1333 
