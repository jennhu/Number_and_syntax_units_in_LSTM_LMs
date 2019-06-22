cd ..
python Code/generate_info_from_raw_txt.py \
    -i Data/Stimuli/refl_nounpp.txt \
    -o Data/Stimuli/refl_nounpp \
    -p number_1 2 \
    -p number_2 3 \
    -p refl_wrong 4 \
    --correct-word-position 6 \
    --wrong-word-label refl_wrong