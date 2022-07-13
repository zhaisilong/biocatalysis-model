DATA_DIR="data"
INPUT_FILE="data.csv"
OUTPUT_DIRECTORY="experiments"

mkdir -p $OUTPUT_DIRECTORY

python bin/rbt-preprocess.py $DATA_DIR/$INPUT_FILE $OUTPUT_DIRECTORY \
  --remove-patterns=$DATA_DIR/patterns.txt \
  --remove-molecules=$DATA_DIR/molecules.txt