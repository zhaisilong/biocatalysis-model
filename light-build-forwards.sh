DATASET=data/uspto_dataset
DATASET_TRANSFER=data/light_dataset/experiments/1
SAVE_PREFIX=light_multitask_forward

mkdir -p preprocessing

# forward
onmt_preprocess \
  -train_src "${DATASET}/src-train.txt" "${DATASET_TRANSFER}/src-train.txt" \
  -train_tgt "${DATASET}/tgt-train.txt" "${DATASET_TRANSFER}/tgt-train.txt" \
  -valid_src "${DATASET_TRANSFER}/src-valid.txt" \
  -valid_tgt "${DATASET_TRANSFER}/tgt-valid.txt" \
  -train_ids uspto transfer \
  -save_data  preprocessing/$SAVE_PREFIX \
  -src_seq_length 3000 -tgt_seq_length 3000 \
  -src_vocab_size 3000 -tgt_vocab_size 3000 \
  -share_vocab