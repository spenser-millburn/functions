# Defined in /tmp/fish.QEmTb4/toradex_to_file.fish @ line 2
function toradex_to_file
sshpass -p root ssh -t root@192.168.5.50 "export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot';cd /opt/alphabot/bin;./line_sensor_adc_test -D ../etc" | tee $argv[1]_(datepath).txt
end
