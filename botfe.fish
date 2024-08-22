function botfe
  set file_path $argv[2]
  sshpass -p "root" scp $argv[1]:$file_path /tmp/tmp.json
  vim /tmp/tmp.json 
  sshpass -p "root" scp /tmp/tmp.json $argv[1]:$file_path 
end
