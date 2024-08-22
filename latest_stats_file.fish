function latest_stats_file
      ssh -t $argv[1] "ls -1 -t /var/alphabot_log |grep stats| head -n1"| sed -e 's/\r$//'     
end
