function timestamp2h
awk '{ $1=strftime("%Y-%m-%d %H:%M:%S", $1) } 1' $argv[1] > no_ts.txt
end
