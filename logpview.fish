 function logpview                                                                    
     set grid_id $argv[1]                                                             
     set log_name $argv[2]                                                            
                                                                                      
     logpull $grid_id $log_name                                                       
     datapull $grid_id $log_name                                                      
     log2h $log_name                                                                  
     logview $log_name
     log2csv (logdir)/$log_name/$logname-data.txt
     mc cp (logdir)/$log_name/$logname-data.csv
     mc cp (logdir)/$log_name/$logname.txt
     # echo (logdir)/$log_name | clip
     # cdlogs $log_name
     # plot_data_logs (logdir)/$log_name $log_name
     # splitlog (logdir)/$log_name                                                    
 end                                                                                  
                       
