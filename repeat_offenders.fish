function repeat_offenders
set clip (paste)
set kql_file $KQL_QUERY_DIR/repeat_offenders/repeat_offenders.kql
cat $kql_file | sed "s/| where __grid_id == \"B0200002UC\"/    | where __grid_id == \"$argv[1]\"/g" | clip
qclip #| tee /dev/tty | clip
# paste | g please count the number of records in this table and respond with only the count nothing else
echo $clip | clip
end
