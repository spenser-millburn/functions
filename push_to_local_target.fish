# Defined in /tmp/fish.nZcmZt/push_to_local_target.fish @ line 2
function push_to_local_target
scp $argv[1] root@$argv[2]:/opt/
ssh -t root@$argv[2] "apm install /opt/$argv[1]"
end
