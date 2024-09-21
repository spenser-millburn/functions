function todayfault
set clip (paste)
set kql_file /home/smillburn/embd/repo/kql_queries/templates/all_sites_today.kql
cat $kql_file | sed "s/0C_05_00/$argv/g" | clip
qclip
echo $clip | clip
end
