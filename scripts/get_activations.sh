cd ..
python Code/extract-activations.py \
    Data/LSTM/models/lstm_lm_refl_collapsed_default.pt \
    -i Data/Stimuli/refl_nounpp.text \
    -v Data/LSTM/models/vocab_refl_collapsed.txt \
    -o Data/LSTM/activations/refl_nounpp \
    --eos-separator "<eos>" \
    --lang en \
    --use-unk