# Defined in /tmp/fish.zP45KV/datapull.fish @ line 1
function datapull
    mkdir -p (logdir)/$argv[2]
    scp $argv[1]:/var/alphabot_log/"$argv[2]*.txt" (logdir)/$argv[2]
end
