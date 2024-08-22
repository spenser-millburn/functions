# Defined in /tmp/fish.7sX4tj/splinter.fish @ line 2
function splinter

# ssh -t root@10.105.28.13 "export LD_LIBRARY_PATH='/opt/alphabot/lib:$LD_LIBRARY_PATH';export LD_LIBRARY_PATH='/lib/alphabot_boost:$LD_LIBRARY_PATH';/bin/sh;"
sshpass -p root ssh -t root@10.105.28.13 "cd /opt/alphabot/bin ;export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot'; /bin/sh; "
end
