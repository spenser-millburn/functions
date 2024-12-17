function plot_cosine_series
python3 -c "
import sys
from math import cos
from math import pi
from asciichartpy import plot
import pandas as pd
df = pd.read_csv('$argv[1]')
first_column_list = df.iloc[:, 0].tolist()

width = 90
#series = [7 * round(cos(i * ((pi * 4) / width)), 2) for i in range(width)]
series = first_column_list

print(plot(series))

series = [2.0] * width

print(plot(series))
print(plot(series, {'height':5}))

series = [0.0] * width

print(plot(series))
print(plot(series, {'height':5}))
"
end
