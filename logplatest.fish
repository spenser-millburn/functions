function logplatest
     set grid_id $argv[1]                                                             
     set log_name (logls $grid_id latest 1  | getfield 9 | cut -d '.' -f1 )                                                            

     logpull $grid_id $log_name                                                       
     datapull $grid_id $log_name

     log2csv (logdir)/$log_name/$log_name-data.txt

     set bucket myminio/alphabot-logs-bucket

     if exists (logdir)/$log_name/$log_name-data.csv
       mc cp (logdir)/$log_name/$log_name-data.csv $bucket
     end

     if exists (logdir)/$log_name/$log_name-data.csv
       mc cp (logdir)/$log_name/$log_name.txt $bucket
     end


     if exists (logdir)/$log_name/video_files
      mv video_files $log_name-video_files
      tarball $log_name-video_files
      mc cp (logdir)/$log_name-video_files.tar.gz $bucket
     end

     logview $log_name

     # echo (logdir)/$log_name | clip
     # cdlogs $log_name
     # plot_data_logs (logdir)/$log_name $log_name
     # splitlog (logdir)/$log_name                                                    
 
end
