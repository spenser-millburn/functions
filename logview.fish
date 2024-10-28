function logview
  thl -ts utc (logdir)/$argv[1]/$argv[1].key.thl (logdir)/$argv[1]/$argv[1].thl > (logdir)/$argv[1].txt 
  lnav $argv[1].txt
  # echo (logdir)/$argv[1]/ | clip
end
