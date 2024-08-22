function abl_fish --description 'Define and use abl bash function within fish shell'
     set search_date (string join " " $argv)                                                                                                                                       
                                                                                                                                                                                   
     bash -c "                                                                                                                                                                     
         function abl() {                                                                                                                                                          
             search_timestamp=\$(date +%s -d \"\$*\")                                                                                                                              
             latest_log=''                                                                                                                                                         
                                                                                                                                                                                   
             while IFS= read -r log; do                                                                                                                                            
                 log_datetime=\$(echo \"\$log\" | grep -oP '\\d{4}(?:_\\d{2}){5}')                                                                                                 
                 IFS=_ read -r Y M D h m s <<< \"\$log_datetime\"                                                                                                                  
                 log_timestamp=\$(date +%s -d \"\$Y-\$M-\$D \$h:\$m:\$s\")                                                                                                         
                                                                                                                                                                                   
                 if [[ \$search_timestamp -gt \$log_timestamp ]]; then                                                                                                             
                     latest_log=\$(echo \"\$log\" | sed 's#^\\./##; s#\\.txt\$##')                                                                                                 
                     break                                                                                                                                                         
                 fi                                                                                                                                                                
             done < <(find . -type f -iname \"alphabot*.txt\" -not -iname \"*data*\" -printf \"%P\\n\" | sort -r)                                                                  
                                                                                                                                                                                   
             if [[ -n \$latest_log ]]; then                                                                                                                                        
                 echo \"\$latest_log\"                                                                                                                                             
             else                                                                                                                                                                  
                 echo \"No log found before the specified date.\"                                                                                                                  
             fi                                                                                                                                                                    
         }                                                                                                                                                                         
                                                                                                                                                                                   
         abl '$search_date'                                                                                                                                                        
     "                                                                                                                                                                             
end
