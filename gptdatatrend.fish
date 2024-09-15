function gptdatatrend
    # Get the current working directory
    set cwd (pwd)

    # Store the user-supplied data analysis prompt
    set analysis_prompt "$argv[2..-1]"

    # Fetch the CSV file path
    set csv_file_path $argv[1]
    
    # Prompt GPT to identify trends based on the CSV file without generating a script
    set trend_analysis_prompt "Please identify and describe the key trends in the data from . The description should cover any significant patterns, anomalies, or insights from the data, including time-based trends, correlations, or changes in variables. Focus on summarizing trends rather than generating Python code."

    g "$csv_file_path" "$analysis_prompt" "$trend_analysis_prompt" this CSV file: (cat $csv_file_path) | tee identified_trends.txt
    
    # --------------------------------------------------------------------------------------------------------
    h1 "                                        IDENTIFIED TRENDS                                               "
    # --------------------------------------------------------------------------------------------------------
    cat identified_trends.txt

    cd $cwd
end
