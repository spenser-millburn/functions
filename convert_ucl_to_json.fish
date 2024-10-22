function convert_ucl_to_json
    set output_dir $argv[1]
    if not test -d $output_dir
        mkdir -p $output_dir
    end
    for file in (find . -name '*.json')
        set output_file $file
        set output_file (string replace './' "$output_dir/" $output_file)
        ucltool -i $file -o $output_file -f json
    end
end
