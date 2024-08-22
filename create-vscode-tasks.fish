function create-vscode-tasks
    #!/usr/bin/env fish                                                        

    set content '{                                                             
   // See https://go.microsoft.com/fwlink/?LinkId=733558                    
   // for the documentation about the tasks.json format                     
   "version": "2.0.0",                                                      
   "tasks": [                                                               
     {                                                                      
       "label": "build",                                                    
       "type": "shell",                                                     
       "command": "build"                                                   
     }                                                                      
   ]                                                                        
 }'

    set folder_path $PWD/.vscode
    set file_path "$folder_path/tasks.json"

    # Create the .vscode folder if it does not exist                           
    mkdir -p $folder_path

    # Write the content to the tasks.json file                                 
    echo "$content" >$file_path

    echo "tasks.json file created at $file_path"

end
