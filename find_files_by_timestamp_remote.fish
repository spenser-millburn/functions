function find_files_by_timestamp_remote
    set target_timestamp 1728427202
    set wiggle_room 600
    set remote_host "user@remote_host"
    set remote_directory "/path/to/remote/directory"
    
    for file in (ssh $remote_host "cd $remote_directory; ls")
        set file_timestamp (ssh $remote_host "stat -c %Y $remote_directory/$file")
        if test $file_timestamp -ge (math $target_timestamp - $wiggle_room) -a $file_timestamp -le (math $target_timestamp + $wiggle_room)
            echo $file
        end
    end
end
