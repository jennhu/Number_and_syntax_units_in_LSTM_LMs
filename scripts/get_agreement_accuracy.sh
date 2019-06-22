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

# OUTPUT:
# [['number_1', 'singular'], ['number_2', 'singular']]
# 1.0
# p-difference: 0.00825 +- 0.00752
# [['number_1', 'singular'], ['number_2', 'plural']]
# 0.9566666666666667
# p-difference: 0.00328 +- 0.00394
# [['number_1', 'plural'], ['number_2', 'singular']]
# 0.9116666666666666
# p-difference: 0.00325 +- 0.00497
# [['number_1', 'plural'], ['number_2', 'plural']]
# 0.9983333333333333
# p-difference: 0.00448 +- 0.00467