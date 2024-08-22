function botls
ssh $argv[1] -t "ls $argv[2]"
end
