function latest_log_file
     ssh -t $argv[1] "ls -1 -t /var/alphabot_log | grep alphabot*.thl"
end
