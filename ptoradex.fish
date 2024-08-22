# Defined in /tmp/fish.nkAj6o/ptoradex.fish @ line 2
function ptoradex
scp $argv[1] root@192.168.5.50:/opt/apms
ssh -t root@192.168.5.50 "apm install /opt/apms/$argv[1]"
end
