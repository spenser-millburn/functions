function botfv
sshpass -p "root" ssh -t $argv[1] "cat $argv[2]" | vim
end
