DATA_DIR="data/light_dataset"
INPUT_FILE="light.csv"

mkdir -p $OUTPUT_DIRECTORY

python bin/rbt-preprocess.py $DATA_DIR/$INPUT_FILE $DATA_DIR \
  --remove-patterns=$DATA_DIR/patterns.txt \
  --remove-molecules=$DATA_DIR/molecules.txt \
  --ec-level=1