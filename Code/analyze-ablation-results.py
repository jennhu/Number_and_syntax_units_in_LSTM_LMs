import pandas as pd
from os import listdir

def save_results(abl_folder, full_path, out_path):
    ablation_accuracy_results = listdir(abl_folder)
    df = pd.concat([pd.read_csv(abl_folder + '/' + f) for f in ablation_accuracy_results])
    df_no_ablation = pd.read_csv(full_path)

    diff_from_full = []
    for _, row in df.iterrows():
        cond = row['full_cond']
        baseline_acc = df_no_ablation[df_no_ablation['full_cond'] == cond]['accuracy'].values[0]
        diff_from_full.append(row['accuracy'] - baseline_acc)
    df['diff_from_full'] = diff_from_full

    df.to_csv(out_path, index=False)
    return df

def most_important_units(df=None, acc_path=None, k=10):
    assert not(df is None and acc_path is None)

    if acc_path and not df:
        df = pd.read_csv(acc_path)

    df['abs_diff_from_full'] = abs(df['diff_from_full'])
    conditions = df['full_cond'].unique()

    for cond in conditions:
        print('Full condition:', cond)
        rows = df[df['full_cond'] == cond]
        print('Top {} units:'.format(k))
        rows = rows.sort_values(by='abs_diff_from_full', ascending=False)
        print(rows[:k])
        print()

if __name__ == '__main__':
    abl_folder = 'Output/refl_nounpp_ablation/accuracy'
    full_path = 'Output/refl_nounpp.csv'
    out_path = 'Output/refl_nounpp_ablation_accuracy.csv'
    df = save_results(abl_folder, full_path, out_path)

    most_important_units(df=df)
    # most_important_units(acc_path=out_path)