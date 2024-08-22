function subplot_csv_columns
    set filename ./*.csv
    set columns (string join ',' $argv)
    python -c "
import pandas as pd
import plotly.subplots as sp
import plotly.graph_objects as go

columns = '$columns'.split(',')
df = pd.read_csv('$filename')
fig = sp.make_subplots(rows=len(columns), cols=1, shared_xaxes=True)

for i, col in enumerate(columns):
    fig.add_trace(go.Scatter(x=df.index, y=df[col], mode='lines', name=col), row=i+1, col=1)

fig.update_layout(height=300*len(columns), title_text='Subplots of columns: ' + ', '.join(columns))
fig.show()
"
end
