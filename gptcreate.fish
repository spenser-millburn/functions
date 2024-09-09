# Defined via `source`
function gptcreate

    set cwd (pwd)
    set base_prompt "$argv"
    # set base_prompt "I want to make a typer application that prints the date in different formats depending on the option flags,
    # write a high level description of each file required to accomplish this. one bullet point per file. I want the bare minimum
    # no tests or anything but make the typer wrapper separate from the business logic file. dont show any code yet"

    set proj_folder (g respond with a single folder name in snake case format for this project $base_prompt. respond with the folder name only and nothing else)
    echo $proj_folder
    mkdir -p  $proj_folder
    cd $proj_folder

    set overview (g $base_prompt)

    set code_language "This application should be implemented in Python.Not in fish shell.  "
    set json_structure "A list of dictionaries, each with a filename as the key and a description as the value."
    set json_prompt "please create a json array describing each of the files required, as well as the critical methods and their method signatures/return types.
    The key should be the file path and the value should be a description of the implementation without going into extreme detail.
    The structure of this file should be $json_structure."

    set typer_wrapper_prompt "This project should be implemented as a typer cli wrapper that is separate from the business logic file(s). please do not respond with any code yet"

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

    # set executable_prompt "Your response wil be put directly into a file, so please make sure that it is properly formatted for executing the file via fish cli. Note that your output comes as a single line so add any newlines or ; as necessary"
    # set scripting_language "fish"
    # set build_script_name "build.fish"
    # set gpt_wrapper_definition " I have a shell gpt wrapper that is implemented like so, this is available globally
                              # [I] ~/.c/f/functions ❯❯❯ g hello gpt                                        master ✱ :black_medium_square:
                              # Hello! How can I assist you today?
                              # "
#
    # g "
    # please write a $scripting_language script to parse the $json_file_path in the current working directory iterate through the key value pairs,
    # printing them to the screen. the file contains $json.
    # $executable_prompt.
    # in the script, please use the g function $gpt_wrapper_definition to build the files. Use the description provided in the json file as the args to g, also please write \"only respond with the file content\" to the g args. redirect the output via > to the file name provided by the key.
    # " > $build_script_name
#
#
    # set build_script_path (full_path ./$build_script_name)
#
    # echo BUILD_SCRIPT_PATH: $build_script_path
    # cat $build_script_path
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
    cd $cwd
end
