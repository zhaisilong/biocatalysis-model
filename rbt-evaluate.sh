python bin/rbt-evaluate.py data/light_dataset/experiments/1 \
  --name="all_results_top1" \
  --n-best-fw=10 \
  --n-best-bw=10 \
  --top-n-fw=1 \
  --top-n-bw=1

python bin/rbt-evaluate.py data/light_dataset/experiments/1 \
  --name="all_results_top3" \
  --n-best-fw=10 \
  --n-best-bw=10 \
  --top-n-fw=3 \
  --top-n-bw=3

python bin/rbt-evaluate.py data/light_dataset/experiments/1 \
  --name="all_results_top5" \
  --n-best-fw=10 \
  --n-best-bw=10 \
  --top-n-fw=5 \
  --top-n-bw=5