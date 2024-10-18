function find_files_by_timestamp
    set target_timestamp 1728427202
    for file in *
        if test (stat -c %Y $file) -eq $target_timestamp
            echo $file
        end
    end
end
