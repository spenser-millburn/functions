function statspull
  alphabot
  set -g AB_LOGDIR /var/alphabot_log
    mkdir -p (logdir)/stats
    set -g STATS_FILE (latest_stats_file $argv[1])
    if [ $argv[2] = "latest" ] 
      scp $argv[1]:$AB_LOGDIR/$STATS_FILE (logdir)/stats
    else 
    scp $argv[1]:$AB_LOGDIR/"$argv[2].txt" (logdir)/stats/$argv[2]
    
  end
end
