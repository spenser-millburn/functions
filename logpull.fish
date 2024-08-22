# Defined in /tmp/fish.xA2gjV/logpull.fish @ line 2
function logpull
  alphabot
    mkdir -p (logdir)/$argv[2]
    scp $argv[1]:/var/alphabot_log/"$argv[2]*.thl*" (logdir)/$argv[2]
end
