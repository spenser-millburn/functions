# Defined in /tmp/fish.uqiEOM/psplinter.fish @ line 2
function psplinter
echo "pushing apm to /opt/apms"
sshpass -p root scp *prod*.apm root@10.105.28.13:/opt/apms
echo "pushed APM successfully"
sshpass -p root ssh -t root@10.105.28.13 "apm install /opt/apms/*prod*.apm"
echo "installed APM successfully"
end
