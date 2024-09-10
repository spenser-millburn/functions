# Defined via `source`
function gptcreate

    set cwd (pwd)
    set base_prompt "$argv"
    set proj_folder (g respond with a single folder name in snake case format for this project $base_prompt. respond with the folder name only and nothing else)
    echo $proj_folder
    mkdir -p  $proj_folder
    cd $proj_folder

    set overview (g $base_prompt)

    set code_language "This application should be implemented in Python.Not in fish shell.  "

    set json_structure "A list of dictionaries, each with a filename as the key and a description as the value."
    
    set json_prompt "please create a json array describing each of the files required, as well as the critical methods
    and their method signatures/return types.
    The key should be the file path and the value should be a description of the implementation without going into extreme detail.
    The structure of this file should be $json_structure."

    set typer_wrapper_prompt "This project should be implemented as a typer cli wrapper that is separate from the business logic file(s).
    please do not respond with any code yet"

    set relative_only_prompt "Please make all file paths relative to the current working directory"

    e --------------------------------------------------------------------------------------------------------
    e "                                 PLANNING                                                           "
    e --------------------------------------------------------------------------------------------------------

    set json (g from $code_language. $overview . $json_prompt  . $typer_wrapper_prompt . $relative_only_prompt)
    e JSON:

    set json_file_name files.json
    e $json | tee $json_file_name | jq
    set json_file_path (full_path $json_file_name )
    e json file path :: $json_file_path


    e --------------------------------------------------------------------------------------------------------
    e "                                  PLAN VALIDATION                                                    "
    e --------------------------------------------------------------------------------------------------------
    echo $json | g please summarize this plan for an architecture and confirm its viable > PLAN_VALIDATION.md
    mdview PLAN_VALIDATION.md
#
    e --------------------------------------------------------------------------------------------------------
    e "                                  BUILDING                                                           "
    e --------------------------------------------------------------------------------------------------------
    set json_content (cat $json_file_path | jq -c '.[]')

    for item in $json_content
        set file_name (echo $item | jq -r 'keys[0]')
        set file_content_desc (echo $item | jq -r '.[keys[0]]')
        e $file_name : $file_content_desc
        g I would like you to please implement the following $file_content_desc and only respond with the file content. For context, here is the entire current repo  (walk_and_cat_source) > $file_name
    end

    e --------------------------------------------------------------------------------------------------------
    e "                                  IMPLEMENTATION REVIEW                                               "
    e --------------------------------------------------------------------------------------------------------
    walk_and_cat_source | g please identify any problems > REVIEWME.md
    mdview REVIEWME.md

    e --------------------------------------------------------------------------------------------------------
    e "                                  DOCUMENTATION                                                       "
    e --------------------------------------------------------------------------------------------------------
    walk_and_cat_source | g please wriite a nicely formatted, but minimal and to the point markdown README file, respond with the content of this file only > README.md
    mdview README.md
    remove_code_blocks
    dockerize 
    cd $cwd
end
