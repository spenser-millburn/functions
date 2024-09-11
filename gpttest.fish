function gpttest
    set cwd (pwd)
    set base_prompt "$argv"
    set proj_folder (g respond with a single folder name in snake case format for this project $base_prompt. respond with the folder name only and nothing else)

    # Set up  
    h1 Creating New Test Project: ./$proj_folder
    mkdir -p  $proj_folder/tests
    cd $proj_folder/tests
    # Prompt the plan
    # --------------------------------------------------------------------------------------------------------
    h1 "TEST PLANNING"
    # --------------------------------------------------------------------------------------------------------
    set overview (g "I would like to create unit tests for the following project: $base_prompt. Please describe the necessary files, test cases, and methods that need to be tested.")

    set code_language "The tests should be written in Python using pytest as the test framework."

    set json_structure "A list of dictionaries, each with a filename as the key and a description as the value."
    
    set json_prompt "please create a json array describing each of the test files required for testing the project's functionality.
    Include the test file paths, a description of each test, the methods to be tested, and their respective test cases.
    The structure of this file should be $json_structure."

    set relative_only_prompt "Please make all file paths relative to the current working directory."

    set json (g from $code_language. $overview . $json_prompt . $relative_only_prompt)
    e JSON:

    set json_file_name tests.json
    e $json | tee $json_file_name | jq
    set json_file_path (full_path $json_file_name)
    e json file path :: $json_file_path


    # --------------------------------------------------------------------------------------------------------
    h1 "TEST PLAN VALIDATION"
    # --------------------------------------------------------------------------------------------------------
    echo $json | g please summarize this test plan and confirm its validity > TEST_PLAN_VALIDATION.md
    mdview TEST_PLAN_VALIDATION.md
#
    # --------------------------------------------------------------------------------------------------------
    h1 "TEST BUILDING"
    # --------------------------------------------------------------------------------------------------------
    set json_content (cat $json_file_path | jq -c '.[]')

    for item in $json_content
        set file_name (echo $item | jq -r 'keys[0]')
        set file_content_desc (echo $item | jq -r '.[keys[0]]')
        
        # Extract the directory from the file_name
        set dir_name (dirname $file_name)
        
        # Check if the directory exists, if not, create it
        if not test -d $dir_name
            mkdir -p $dir_name
        end
        
        e $file_name : $file_content_desc
        
        # Generate the test file content using GPT
        g "Please implement the following unit tests: $file_content_desc and respond with the test file content only. For context, here is the entire current repo (walk_and_cat_source)" > $file_name
    end

    remove_code_blocks

    # --------------------------------------------------------------------------------------------------------
    h1 "TEST REVIEW"
    # --------------------------------------------------------------------------------------------------------
    walk_and_cat_source | g please identify any problems with these tests > TEST_REVIEW.md
    mdview TEST_REVIEW.md
    if gptguard "(cat TEST_REVIEW.md)"
      h1 Fixing Test Issues
      gptmodify (cat TEST_REVIEW.md)
    else
      h1 No Test Issues
    end

    # --------------------------------------------------------------------------------------------------------
    h1 "TEST DOCUMENTATION"
    # --------------------------------------------------------------------------------------------------------
    walk_and_cat_source | g please write a markdown README file that explains how to run the tests, respond with the content of this file only > TEST_README.md
    mdview ./TEST_README.md
    create_python_requirements_txt
    dockerize_tests
    # autorun
    cd $cwd
end