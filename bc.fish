function bc
ssh $argv[1] -t "$argv[2..-1]"
end
