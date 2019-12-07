#!/bin/bash

export CUDA_VISIBLE_DEVICES=0

PROJ_ROOT="/Users/wangqiwen/Documents/cs236/project/MDD"
PROJ_NAME="A2C"
LOG_FILE="${PROJ_ROOT}/log/${PROJ_NAME}-`date +'%Y-%m-%d-%H-%M-%S'`.log"

echo "GPU: $CUDA_VISIBLE_DEVICES" > ${LOG_FILE}
python ${PROJ_ROOT}/trainer.py \
    --config ${PROJ_ROOT}/config/dann.yml \
    --dataset Office-Home \
    --src_address ./data/Art.txt \
    --tgt_address ./data/Clipart.txt \
#    >> ${LOG_FILE}  2>&1

