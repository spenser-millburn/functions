function pretty_print_csv
    if test (count $argv) -ne 1
        echo "Usage: pretty_print_csv <file.csv>"
        return 1
    end

    if not test -f $argv[1]
        echo "File not found: $argv[1]"
        return 1
    end

    cat $argv[1] | column -s, -t
end
