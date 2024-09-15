function gptdataanalyze
    # Get the current working directory
    set cwd (pwd)

    # Store the user-supplied data analysis prompt
    set analysis_prompt "$argv[2..-1]"

    # Fetch the CSV file path
    set csv_file_path $argv[1]
    
    # Prompt GPT to generate the Python script for analysis without removing newlines
    set python_script_prompt "Please generate a Python script to analyze the data from this CSV file: $csv_file_path. The script should handle loading the CSV using pandas, performing any necessary data cleaning, and generating analysis and visualizations based on this prompt: $analysis_prompt. Make sure the script is modular and includes proper comments for each step."

    g "$csv_file_path" "$analysis_prompt" "$python_script_prompt" | tee generated_analysis_script.py
    
    # --------------------------------------------------------------------------------------------------------
    h1 "                                  GENERATED PYTHON ANALYSIS SCRIPT                                      "
    # --------------------------------------------------------------------------------------------------------
    cat generated_analysis_script.py

    # Provide instructions to run the Python script
    e "\nTo analyze the data, run the following command:"
    e "python3 generated_analysis_script.py"
  
    cd $cwd
end
