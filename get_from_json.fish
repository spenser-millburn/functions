function get_from_json
    set key $argv[1]
    for file in (find . -maxdepth 1 -type f -name '*.json')
        set result (jq -r --arg key "$key" '.[$key] // empty' $file)
        if test -n "$result"
            echo "$file: $key: $result"
        end
    end
end
