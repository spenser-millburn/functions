function load_nvm
     set -gx NVM_DIR "$HOME/.nvm"                                                                                                                                                     
     if test -s "$NVM_DIR/nvm.sh"                                                                                                                                                     
         bass source "$NVM_DIR/nvm.sh"                                                                                                                                                     
     end                                                                                                                                                                              
     if test -s "$NVM_DIR/bash_completion"                                                                                                                                            
         bass source "$NVM_DIR/bash_completion"                                                                                                                                            
     end                                                                                                                                                                              
 
end
