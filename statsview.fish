function statsview
  if [ $argv[2] = "latest" ]
    set -g FILE (latest_stats_file $argv[1])
  else
    set -g FILE (logdir)/stats/$argv[1]
  end
  cat $FILE | jless
end
