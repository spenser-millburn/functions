# Defined in /tmp/fish.a7Wn8k/plocal.fish @ line 2
function plocal
scp $argv[1] root@$argv[2]:/opt/
ssh -t root@$argv[2] "apm install /opt/$argv[1]"
end
