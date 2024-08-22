# Defined in /tmp/fish.yOf4Mb/toradex.fish @ line 2
function toradex
  sudo ifconfig enx70886b87bf7b 192.168.5.10 netmask 255.255.255.0
  ssh root@192.168.5.50 -p6001
end
