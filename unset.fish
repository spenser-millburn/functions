function unset
    set var_name $argv[1]
    if not set -q $var_name
        return 0
    else
        return 1
    end
end
