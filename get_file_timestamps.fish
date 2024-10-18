function get_file_timestamps
    if test (count $argv) -eq 0
        echo "Usage: get_file_timestamps <file_path>"
        return 1
    end

    set file_path $argv[1]

    if test -e $file_path
        date -d (stat -c %y $file_path) +%s

    else
        echo "File not found: $file_path"
        return 1
    end
end
