function gptfmodify
    # Get the current working directory
    set cwd (pwd)

    # Store the user-supplied modification prompt
    set modification_prompt "$argv[2..-1]"

    # Fetch the current state of the project by walking and concatenating the file contents
    set file_name $argv[1]
    set project_context (cat $file_name)
    
    # Generate a description of the existing files using the project context
    set no_backticks " please ensure to not use markdown codeblock backticks and only respond with the file content"
    set json_structure "A list of dictionaries, each with a filename as the key and a description of the current file contents."
    set json_prompt "Please describe the file.  $file_name, and the value should be a brief description of the current contents. The structure of this file should be $json_structure.$no_backticks"
    
    set file_overview_json (g from "$project_context" . "$json_prompt" | string collect)
    
    echo $file_overview_json | tee file_overview.json | jq

    # Review the modification prompt and generate instructions for which files need to be changed
    set modification_json_structure "A list of dictionaries, each with a filename as the key and a description of the modifications needed to that file."
    set modification_json_prompt "Please analyze the current files and generate a list of modifications based on this prompt: $modification_prompt. The structure should be $modification_json_structure. Make sure to respond with json content only, the output must be json parseable"

    set filter_no_modifications "If no modifications are required please dont include the modification in the output"

    set modification_plan (g "$modification_prompt $file_overview_json $modification_json_prompt $filter_no_modifications $no_backticks" | string collect)
    # --------------------------------------------------------------------------------------------------------
    h1 "                                  MODIFICATION PLAN                                                   "
    # --------------------------------------------------------------------------------------------------------
    
    echo $modification_plan|jq  | tee modification_plan.json | jq
    set modification_plan_file modification_plan.json
#
    # --------------------------------------------------------------------------------------------------------
    h1 "                                  APPLYING MODIFICATIONS                                               "
    # --------------------------------------------------------------------------------------------------------

    set modification_content (cat $modification_plan_file | jq -c '.[]')
    for item in $modification_content
        set file_name (echo $item | jq -r 'keys[0]')
        set modification_desc (echo $item | jq -r '.[keys[0]]')

        e "Modifying $file_name based on: $modification_desc"
        set filter_code_only "Please respond with only the code as this file will be executed. $no_backticks"
        g "$modification_desc". $filter_code_only "please modify this file according to the description, here is the current file content:" (cat $file_name) |string collect  > $file_name
    end

    # --------------------------------------------------------------------------------------------------------
    h1 "                                 DIFF "
    # --------------------------------------------------------------------------------------------------------
    # gcm # smart commit function
    git diff
    rm modification_plan.json
  
    cd $cwd
end
