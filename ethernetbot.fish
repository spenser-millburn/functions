function ethernetbot
  sudo ifconfig enp0s31f6 192.168.5.10 netmask 255.255.255.0
  ssh root@192.168.5.50
end
