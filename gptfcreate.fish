function gptfcreate
    # Set current working directory
    set cwd (pwd)
    
    # Set base prompt from input arguments
    set base_prompt "$argv"
    
    # Prompt the plan
    echo "Creating file based on prompt: $base_prompt"
    
    # Generate file name in snake case based on the prompt
    set file_name (g "Respond with a single snake case file name based on this prompt: $base_prompt. Respond with only the file name and nothing else.")
    
    # Create the file and generate its content using GPT
    g "I would like you to please implement the following: $base_prompt. Only respond with the file content and make sure it is implemented in Python if applicable." > $file_name
    
    # Display the generated file
    cat $file_name
    
    # Return to the original directory
    cd $cwd
end
