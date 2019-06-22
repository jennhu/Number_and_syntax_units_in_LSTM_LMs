cd ..
python Code/extract_predictions.py \
    Data/LSTM/models/lstm_lm_refl_collapsed_default.pt \
    -i Data/Stimuli/refl_nounpp \
    -v Data/LSTM/models/vocab_refl_collapsed.txt \
    -o Output/refl_nounpp \
    --eos-separator "<eos>" \
    --format pkl \
    --lang en \
    --uppercase-first-word
# --cuda