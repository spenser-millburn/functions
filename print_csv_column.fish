# Defined interactively
function print_csv_column
    set column_name $argv[2]
    python3 -c "
import pandas as pd
df = pd.read_clipboard()
print(df.columns)
# print(df['$argv[1]'])
"
end

