# Defined in /tmp/fish.wsXv8r/psllsplinter.fish @ line 1
function psllsplinter
echo "pushing apm to /opt/apms"
sshpass -p root scp ~/Downloads/sll-alert-2.1.0-noarch.apm root@10.105.28.13:/opt/apms
echo "pushed APM successfully"
sshpass -p root ssh -t root@10.105.28.13 "apm-static install /opt/apms/*sll*.apm"
echo "installed APM successfully"
end
