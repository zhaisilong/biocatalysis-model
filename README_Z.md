# Bio Reaction

## Light as Catalyst

1. excel to csv all

2. preprocess with smiles: `light-preprocess.sh`

3. build vocabulary `light-build-forwards.sh`

4. train `light-train.sh`

## 逆合成

```bash
# preprocess with smiles
bash light-preprocess.sh
# build vocabulary
bash light-build-backwards.sh
# train
bash light-train-backwards.sh
# test
bash light-eval-backwards.sh
# get metrics
bash rbt-evaluate.sh
```