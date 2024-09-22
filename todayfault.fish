function todayfault
set clip (paste)
set kql_file /home/smillburn/embd/repo/kql_queries/templates/all_sites_today.kql
cat $kql_file | sed "s/0C_05_00/$argv[1]/g" | clip
qclip | tee /dev/tty | clip
paste | g please count the number of records in this table and respond with only the count nothing else 
# echo $clip | clip
end
