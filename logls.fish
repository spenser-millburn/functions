function logls
if not set -q argv[1]
  ls -l (logdir) --sort newest
else 
  if [ "$argv[2]" = "latest" ]
    ssh -t $argv[1] "ls -lt /mnt/sd_log |grep alphabot | grep -v data| grep -v stdout  | grep key | head -n$argv[3]"
  else if [ "$argv[2]" = "lateststats" ]
    ssh -t $argv[1] "ls -lt /mnt/sd_log |grep stats_ | grep -v data| grep -v stdout| head -n$argv[3] "
  else
    ssh -t $argv[1] "ls -lt /mnt/sd_log;"
  end
end

end
