function logplatest
     set grid_id $argv[1]                                                             
     set log_name (logls $grid_id latest 1  | getfield 9 | cut -d '.' -f1 )                                                            

     logpull $grid_id $log_name                                                       
     datapull $grid_id $log_name
     logview $log_name

     log2csv (logdir)/$log_name/$log_name-data.txt
     echo (logdir)/$log_name/$log_name-data.csv myminio/alphabot-logs-bucket

     set bucket myminio/alphabot-logs-bucket

     mc cp (logdir)/$log_name/$log_name-data.csv $bucket
     mc cp (logdir)/$log_name/$log_name.txt $bucket

     if exists (logdir)/$log_name/video_files
      mv video_files $log_name-video_files
      tarball $log_name-video_files
      mc cp (logdir)/$log_name-video_files.tar.gz $bucket
     end


     # echo (logdir)/$log_name | clip
     # cdlogs $log_name
     # plot_data_logs (logdir)/$log_name $log_name
     # splitlog (logdir)/$log_name                                                    
 
end
