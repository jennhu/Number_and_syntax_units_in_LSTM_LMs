cd ..

# python Code/plot_units_activations.py \
#     -sentences Data/Stimuli/refl_nounpp.text \
#     -meta Data/Stimuli/refl_nounpp.info \
#     -activations Data/LSTM/activations/refl_nounpp.pkl \
#     -o Figures/refl_nounpp_775.png \
#     -c refl_nounpp \
#     -g 4 r \- 6 775 cell number_1 singular number_2 singular success correct \
#     -g 1 r \- 6 775 gates.c_tilde number_1 singular number_2 singular success correct \
#     -g 1 r "\--" 6 775 gates.c_tilde number_1 singular number_2 plural success correct \
#     -g 1 b "\--" 6 775 gates.c_tilde number_1 plural number_2 singular success correct \
#     -g 1 b \- 6 775 gates.c_tilde number_1 plural number_2 plural success correct \
#     -g 2 r \- 6 775 gates.in number_1 singular number_2 singular success correct \
#     -g 2 r "\--" 6 775 gates.in number_1 singular number_2 plural success correct \
#     -g 2 b "\--" 6 775 gates.in number_1 plural number_2 singular success correct \
#     -g 2 b \- 6 775 gates.in number_1 plural number_2 plural success correct \
#     -g 3 r \- 6 775 gates.forget number_1 singular number_2 singular success correct \
#     -g 3 r "\--" 6 775 gates.forget number_1 singular number_2 plural success correct \
#     -g 3 b "\--" 6 775 gates.forget number_1 plural number_2 singular success correct \
#     -g 3 b \- 6 775 gates.forget number_1 plural number_2 plural success correct \
#     -g 4 r "\--" 6 775 cell number_1 singular number_2 plural success correct \
#     -g 4 b "\--" 6 775 cell number_1 plural number_2 singular success correct \
#     -g 4 b \- 6 775 cell number_1 plural number_2 plural success correct \
#     -g 5 r \- 6 775 gates.out number_1 singular number_2 singular success correct \
#     -g 5 r "\--" 6 775 gates.out number_1 singular number_2 plural success correct \
#     -g 5 b "\--" 6 775 gates.out number_1 plural number_2 singular success correct \
#     -g 5 b \- 6 775 gates.out number_1 plural number_2 plural success correct \
#     -x "The" "boy(s)" "near" "the" "car(s)" "greet(s)" "itself/themselves" \
#     -y "$\tilde{C_t}$" "\$i_t\$" "\$f_t\$" "\$C_t\$" "\$o_t\$" \
#     --no-legend --facecolor w --figwidth 20

# python Code/plot_units_activations.py \
#     -sentences Data/Stimuli/refl_nounpp.text \
#     -meta Data/Stimuli/refl_nounpp.info \
#     -activations Data/LSTM/activations/refl_nounpp.pkl \
#     -o Figures/refl_nounpp_987.png \
#     -c refl_nounpp \
#     -g 4 r \- 6 987 cell number_1 singular number_2 singular success correct \
#     -g 4 r "\--" 6 987 cell number_1 singular number_2 plural success correct \
#     -g 4 b "\--" 6 987 cell number_1 plural number_2 singular success correct \
#     -g 4 b \- 6 987 cell number_1 plural number_2 plural success correct \
#     -g 3 r \- 6 987 gates.forget number_1 singular number_2 singular success correct \
#     -g 3 r "\--" 6 987 gates.forget number_1 singular number_2 plural success correct \
#     -g 3 b "\--" 6 987 gates.forget number_1 plural number_2 singular success correct \
#     -g 3 b \- 6 987 gates.forget number_1 plural number_2 plural success correct \
#     -g 2 r \- 6 987 gates.in number_1 singular number_2 singular success correct \
#     -g 2 r "\--" 6 987 gates.in number_1 singular number_2 plural success correct \
#     -g 2 b "\--" 6 987 gates.in number_1 plural number_2 singular success correct \
#     -g 2 b \- 6 987 gates.in number_1 plural number_2 plural success correct \
#     -g 1 r \- 6 987 gates.c_tilde number_1 singular number_2 singular success correct \
#     -g 1 r "\--" 6 987 gates.c_tilde number_1 singular number_2 plural success correct \
#     -g 1 b "\--" 6 987 gates.c_tilde number_1 plural number_2 singular success correct \
#     -g 1 b \- 6 987 gates.c_tilde number_1 plural number_2 plural success correct \
#     -g 5 r \- 6 987 gates.out number_1 singular number_2 singular success correct \
#     -g 5 r "\--" 6 987 gates.out number_1 singular number_2 plural success correct \
#     -g 5 b "\--" 6 987 gates.out number_1 plural number_2 singular success correct \
#     -g 5 b \- 6 987 gates.out number_1 plural number_2 plural success correct \
#     -x "The" "boy(s)" "near" "the" "car(s)" "greet(s)" "itself/themselves" \
#     -y "$\tilde{C_t}$" "\$i_t\$" "\$f_t\$" "\$C_t\$" "\$o_t\$" \
#     --no-legend --facecolor w --figwidth 20

# python Code/extract_embeddings_from_rnn.py \
#     -model Data/LSTM/models/lstm_lm_refl_collapsed_default.pt \
#     -v Data/LSTM/models/vocab_refl_collapsed.txt \
#     -i Data/Stimuli/singular_plural_refl.txt \
#     -u 775 987 1149 650 1299 \
#     -o Figures/refl.png \
#     -c b r g k k

# python Code/plot_units_activations.py \
#     -sentences Data/Stimuli/refl_nounpp.text \
#     -meta Data/Stimuli/refl_nounpp.info \
#     -activations Data/LSTM/activations/refl_nounpp.pkl \
#     -o Figures/refl_nounpp_1149_cell.png \
#     -c refl_nounpp \
#     -g 1 g \- 6 1149 cell \
#     -y "\$C_t$" \
#     -x "The" "boy" "near" "the" "car" "greets" "itself" \
#     --no-legend --facecolor w --figheight 5