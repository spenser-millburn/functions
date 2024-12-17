function reduce_dataframe
    python3 -c "
import pandas as pd

def reduce_dataframe_by_averaging(df, n):
    # Ensure the DataFrame's length is a multiple of n
    if len(df) % n != 0:
        raise ValueError('The number of rows in the DataFrame must be a multiple of n.')

    # Group the DataFrame by averaging every 'n' rows
    reduced_df = df.groupby(df.index // n).mean()

    return reduced_df

# Example usage
data = {
    'A': [1, 2, 3, 4, 5, 6],
    'B': [7, 8, 9, 10, 11, 12]
}

df = pd.read_clipboard()
# Reduce the DataFrame by averaging every n rows
reduced_df = reduce_dataframe_by_averaging(df, int('$argv[1]'))
pd.set_option('display.max_rows', None)
print(reduced_df)
"
end
