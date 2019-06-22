import pandas as pd

if __name__ == '__main__':
    names = ['text', 'cond', 'result', 'id']
    na_verb_data = pd.read_csv('../NA_tasks/nounpp.txt', delimiter='\t', names=names)
    print(na_verb_data.head())

    prefixes = na_verb_data[na_verb_data.result == 'correct']

    na_refl_data = {col: [] for col in names}
    for index, row in prefixes.iterrows():
        noun_number = row['cond'].split('_')[0]
        correct_refl = 'itself' if noun_number == 'singular' else 'themselves'
        wrong_refl = 'themselves' if noun_number == 'singular' else 'itself'
        correct_text = row['text'] + ' ' + correct_refl
        wrong_text = row['text'] + ' ' + wrong_refl

        # append the 'correct' condition
        na_refl_data['text'].append(correct_text)
        na_refl_data['cond'].append(row['cond'])
        na_refl_data['result'].append('correct')
        na_refl_data['id'].append(row['id'])

        # append the 'wrong' condition
        na_refl_data['text'].append(wrong_text)
        na_refl_data['cond'].append(row['cond'])
        na_refl_data['result'].append('wrong')
        na_refl_data['id'].append(row['id'])

    df = pd.DataFrame(na_refl_data)
    print(df.head())
    out_path = 'refl_nounpp.txt'
    df.to_csv(out_path, sep='\t', header=None, index=False)

    