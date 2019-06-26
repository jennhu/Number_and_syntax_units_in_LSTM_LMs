cd ..

################################################################################
# plot activations for units 933 and 816
################################################################################
python Code/plot_units_activations.py \
    -sentences Data/Stimuli/refl_nounpp.text \
    -meta Data/Stimuli/refl_nounpp.info \
    -activations Data/LSTM/activations/refl_nounpp.pkl \
    -o Figures/refl_nounpp_932.png \
    -c refl_nounpp \
    -g 4 r \- 4 932 cell number_1 singular number_2 singular success correct \
    -g 4 r "\--" 4 932 cell number_1 singular number_2 plural success correct \
    -g 4 b "\--" 4 932 cell number_1 plural number_2 singular success correct \
    -g 4 b \- 4 932 cell number_1 plural number_2 plural success correct \
    -g 3 r \- 4 932 gates.forget number_1 singular number_2 singular success correct \
    -g 3 r "\--" 4 932 gates.forget number_1 singular number_2 plural success correct \
    -g 3 b "\--" 4 932 gates.forget number_1 plural number_2 singular success correct \
    -g 3 b \- 4 932 gates.forget number_1 plural number_2 plural success correct \
    -g 2 r \- 4 932 gates.in number_1 singular number_2 singular success correct \
    -g 2 r "\--" 4 932 gates.in number_1 singular number_2 plural success correct \
    -g 2 b "\--" 4 932 gates.in number_1 plural number_2 singular success correct \
    -g 2 b \- 4 932 gates.in number_1 plural number_2 plural success correct \
    -g 1 r \- 4 932 gates.c_tilde number_1 singular number_2 singular success correct \
    -g 1 r "\--" 4 932 gates.c_tilde number_1 singular number_2 plural success correct \
    -g 1 b "\--" 4 932 gates.c_tilde number_1 plural number_2 singular success correct \
    -g 1 b \- 4 932 gates.c_tilde number_1 plural number_2 plural success correct \
    -g 5 r \- 4 932 gates.out number_1 singular number_2 singular success correct \
    -g 5 r "\--" 4 932 gates.out number_1 singular number_2 plural success correct \
    -g 5 b "\--" 4 932 gates.out number_1 plural number_2 singular success correct \
    -g 5 b \- 4 932 gates.out number_1 plural number_2 plural success correct \
    -x "The" "boy(s)" "near" "the" "car(s)" "greet(s)" "itself/themselves" \
    -y "$\tilde{C_t}$" "\$i_t\$" "\$f_t\$" "\$C_t\$" "\$o_t\$" \
    --no-legend --facecolor w --figwidth 20 --title "unit 933"

python Code/plot_units_activations.py \
    -sentences Data/Stimuli/refl_nounpp.text \
    -meta Data/Stimuli/refl_nounpp.info \
    -activations Data/LSTM/activations/refl_nounpp.pkl \
    -o Figures/refl_nounpp_815.png \
    -c refl_nounpp \
    -g 4 r \- 4 815 cell number_1 singular number_2 singular success correct \
    -g 4 r "\--" 4 815 cell number_1 singular number_2 plural success correct \
    -g 4 b "\--" 4 815 cell number_1 plural number_2 singular success correct \
    -g 4 b \- 4 815 cell number_1 plural number_2 plural success correct \
    -g 3 r \- 4 815 gates.forget number_1 singular number_2 singular success correct \
    -g 3 r "\--" 4 815 gates.forget number_1 singular number_2 plural success correct \
    -g 3 b "\--" 4 815 gates.forget number_1 plural number_2 singular success correct \
    -g 3 b \- 4 815 gates.forget number_1 plural number_2 plural success correct \
    -g 2 r \- 4 815 gates.in number_1 singular number_2 singular success correct \
    -g 2 r "\--" 4 815 gates.in number_1 singular number_2 plural success correct \
    -g 2 b "\--" 4 815 gates.in number_1 plural number_2 singular success correct \
    -g 2 b \- 4 815 gates.in number_1 plural number_2 plural success correct \
    -g 1 r \- 4 815 gates.c_tilde number_1 singular number_2 singular success correct \
    -g 1 r "\--" 4 815 gates.c_tilde number_1 singular number_2 plural success correct \
    -g 1 b "\--" 4 815 gates.c_tilde number_1 plural number_2 singular success correct \
    -g 1 b \- 4 815 gates.c_tilde number_1 plural number_2 plural success correct \
    -g 5 r \- 4 815 gates.out number_1 singular number_2 singular success correct \
    -g 5 r "\--" 4 815 gates.out number_1 singular number_2 plural success correct \
    -g 5 b "\--" 4 815 gates.out number_1 plural number_2 singular success correct \
    -g 5 b \- 4 815 gates.out number_1 plural number_2 plural success correct \
    -x "The" "boy(s)" "near" "the" "car(s)" "greet(s)" "itself/themselves" \
    -y "$\tilde{C_t}$" "\$i_t\$" "\$f_t\$" "\$C_t\$" "\$o_t\$" \
    --no-legend --facecolor w --figwidth 20 --title "unit 816"