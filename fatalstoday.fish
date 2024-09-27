function fatalstoday
set clip (paste)
set kql_file $KQL_QUERY_DIR/fatals/fatal_single_site_today.kql
cat $kql_file | sed "s/union withsource=SourceName Walmart_0100/union withsource=SourceName Walmart_$argv[1]/g" | clip
qclip #| tee /dev/tty | clip
# paste | g please count the number of records in this table and respond with only the count nothing else
echo $clip | clip
end
