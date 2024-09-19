function qj
 q --kql-file $argv[1] --json-output --output-file /tmp/(datepath)-query.json --print-output  | jq
end
