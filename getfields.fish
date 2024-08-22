function getfields
    if test (count $argv) -ne 2
        echo "Usage: getfields <start_field> <end_field>"
        return 1
    end

    set start_field $argv[1]
    set end_field $argv[2]

    awk "{for(i=$start_field;i<=$end_field;i++) printf \"%s \", \$i; printf \"\n\"}"
end
