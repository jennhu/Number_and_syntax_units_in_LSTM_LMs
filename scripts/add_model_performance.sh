cd ..
python Code/add_success_and_perplexity_to_info.py \
    -i Data/Stimuli/$1.info \
    -r Output/$1.abl \
    -a Data/LSTM/activations/$1.pkl