function dlogview
  alphabot
  mkdir -p (logdir)/$argv[1]
  tar xzfv "$DOWNLOADS/$argv[1].tar.gz" -C (logdir)/$argv[1]
  logview $argv[1]
end
