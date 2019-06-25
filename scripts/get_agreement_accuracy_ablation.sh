#!/bin/bash
cd ..

for UNIT in {301..400}; do
    PREFIX=refl_nounpp${UNIT}_groupsize_1_seed_1
    ABL_FILE=Output/refl_nounpp_ablation/${PREFIX}.pkl
    ACCURACY_FILE=Output/refl_nounpp_ablation/accuracy/${PREFIX}.csv

    # overwrite existing file
    if test -f "$ACCURACY_FILE"; then
        echo "${ACCURACY_FILE} already exists! Cleaning up..."
        rm ${ACCURACY_FILE}
    fi

    # add column heading
    echo "number_1,number_2,full_cond,accuracy,ablated_unit" > ${ACCURACY_FILE}

    python Code/get_agreement_accuracy_for_contrast.py \
        -ablation-results ${ABL_FILE} \
        -info Data/Stimuli/refl_nounpp.info \
        -condition number_1=singular number_2=singular \
        -o ${ACCURACY_FILE} \
        -unit ${UNIT}
    python Code/get_agreement_accuracy_for_contrast.py \
        -ablation-results ${ABL_FILE} \
        -info Data/Stimuli/refl_nounpp.info \
        -condition number_1=singular number_2=plural \
        -o ${ACCURACY_FILE} \
        -unit ${UNIT}
    python Code/get_agreement_accuracy_for_contrast.py \
        -ablation-results ${ABL_FILE} \
        -info Data/Stimuli/refl_nounpp.info \
        -condition number_1=plural number_2=singular \
        -o ${ACCURACY_FILE} \
        -unit ${UNIT}
    python Code/get_agreement_accuracy_for_contrast.py \
        -ablation-results ${ABL_FILE} \
        -info Data/Stimuli/refl_nounpp.info \
        -condition number_1=plural number_2=plural \
        -o ${ACCURACY_FILE} \
        -unit ${UNIT}
done