FILE_NAME=tgt-pred.txt
INPUT_FOLDER=data/light_dataset/experiments/1

python bin/rbt-evaluate.py $INPUT_FOLDER \
  --name=$FILE_NAME \
  --n-best-fw=10 \
  --top-n-fw=3 \
  --n-best-bw=10 \
  --top-n-bw=1



