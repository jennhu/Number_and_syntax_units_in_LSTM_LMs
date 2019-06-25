cd ..
python Code/ablation-experiment.py \
    Data/LSTM/models/lstm_lm_refl_collapsed_default.pt \
    -i Data/Stimuli/refl_nounpp \
    -v Data/LSTM/models/vocab_refl_collapsed.txt \
    -o Output/refl_nounpp_ablation/refl_nounpp \
    --format pkl \
    --lang en \
    --use-unk \
    --do-ablation \
    --unit-from 1 \
    --unit-to 650 \
    --cuda