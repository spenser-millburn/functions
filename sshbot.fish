# Defined in /tmp/fish.w6exRz/sshbot.fish @ line 2
function sshbot
sshpass -p Boston2020!@\# ssh -t labjumpbox "ssh -t root@$argv[1] -p6001 'cd /opt/; /bin/sh;';"
end
