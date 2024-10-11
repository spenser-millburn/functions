function unthl
    set key_file $argv[1].key.thl 
    if test -z "$key_file"
        echo "No key file found."
        return 1
    end
    echo $key_file

    set thl_files (find . -maxdepth 1 | ag "$argv[1].thl.*|$argv[1].thl"| grep -v ".key.thl" | sort -V)
    echo $thl_files

    for file in $thl_files
        set output_file $argv[1].txt
        thl $key_file $file >> $output_file
    end
end
