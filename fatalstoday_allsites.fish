function fatalstoday_allsites
set clip (paste)
set kql_file $KQL_QUERY_DIR/fatals/fatal_all_sites_today.kql
cat $kql_file | clip
qclip #| tee /dev/tty | clip
# paste | g please count the number of records in this table and respond with only the count nothing else
echo $clip | clip
end
