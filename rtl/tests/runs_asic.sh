#!/usr/bin/sh

NUM_CORES=16

parallel --bar --gnu -j${NUM_CORES} --header : \
    'bash ./fff_asic_exp.sh paper_auto {a_e} {a_f} {b_e} {b_f} {acc_e} {acc_f} {period}' \
    ::: a_e 0 1 2 3 4 5 \
    ::: a_f 0 1 2 3 4 5 6 7 \
    ::: b_e 0 1 2 3 4 5 \
    ::: b_f 0 1 2 3 4 5 6 7 \
    ::: acc_e 0 1 2 3 4 5 \
    ::: acc_f 0 1 2 3 4 5 6 7 \
    ::: period 100 1333 2000

