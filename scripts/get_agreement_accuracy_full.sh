cd ..
python Code/get_agreement_accuracy_for_contrast.py \
    -ablation-results Output/refl_nounpp.abl \
    -info Data/Stimuli/refl_nounpp.info \
    -condition number_1=singular number_2=singular
python Code/get_agreement_accuracy_for_contrast.py \
    -ablation-results Output/refl_nounpp.abl \
    -info Data/Stimuli/refl_nounpp.info \
    -condition number_1=singular number_2=plural
python Code/get_agreement_accuracy_for_contrast.py \
    -ablation-results Output/refl_nounpp.abl \
    -info Data/Stimuli/refl_nounpp.info \
    -condition number_1=plural number_2=singular
python Code/get_agreement_accuracy_for_contrast.py \
    -ablation-results Output/refl_nounpp.abl \
    -info Data/Stimuli/refl_nounpp.info \
    -condition number_1=plural number_2=plural