function plot_csv_columns
    echo "plot_csv_columns $argv"
    set filename ./*.csv
    set log (pwd | awk -F/ '{print $NF}')
    set columns (string join ',' $argv)
    python -c "
import pandas as pd
import plotly.graph_objects as go

columns = '$columns'.split(',')
df = pd.read_csv('$filename')
fig = go.Figure()

for col in columns:
    fig.add_trace(go.Scatter(x=df.index, y=df[col], mode='lines', name=col))

fig.update_layout(
    template='plotly_dark',
    title_text='[$log] : {' + ', '.join(columns) + '}'
)
fig.show()
"
end
