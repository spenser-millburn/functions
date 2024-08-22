function df_from_grep
set search_pattern $argv[1]
set file_path /tmp/(date -u +"%Y-%m-%d_%H_%M_%S")_$search_pattern.py
set csv_path /tmp/(date -u +"%Y-%m-%d_%H_%M_%S")_$search_pattern.csv
greplogs $search_pattern | g please turn this into a dataframe in python and make sure to save it as a csv to $csv_path. print it to the screen also  | tee $file_path
python3 $file_path

end
