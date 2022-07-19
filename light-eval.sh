# forward prediction

DATASET_TRANSFER="data/light_dataset/experiments/1"
TASK=light_multitask_forward

# Get the newest file from the model directory
MODEL=$(ls model/"${TASK}"*.pt -t | head -1)

onmt_translate -model "${MODEL}" \
    -src "${DATASET_TRANSFER}/src-test.txt" \
    -output "${DATASET_TRANSFER}/tgt-pred.txt" \
    -n_best 10 -beam_size 10 -max_length 300 -batch_size 64 \
    -gpu 0

onmt_translate -model "${MODEL}" \
    -src "${DATASET_TRANSFER}/tgt-test.txt" \
    -output "${DATASET_TRANSFER}/src-pred.txt" \
    -n_best 10 -beam_size 10 -max_length 300 -batch_size 64 \
    -gpu 0