# Defined in /tmp/fish.YnKa2O/pftoradex.fish @ line 2
function pftoradex
alphabot
set FILE_PATH /home/smillburn/build/(branchname)/7.1/driver/line_sensor/src/libdriver_line_sensor_adc.so
sshpass -p root scp $FILE_PATH root@192.168.5.50:/opt/alphabot/lib/
set FILE_PATH /home/smillburn/build/(branchname)/7.1/hal/line_sensor/src/libhal_line_sensor.so
sshpass -p root scp $FILE_PATH root@192.168.5.50:/opt/alphabot/lib/
set FILE_PATH /home/smillburn/build/(branchname)/7.1/exec/lineSensorAdcTest/bin/line_sensor_adc_test
sshpass -p root scp $FILE_PATH root@192.168.5.50:/opt/alphabot/bin
sshpass -p root ssh -t root@192.168.5.50 "export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot';cd /opt/alphabot/bin;./line_sensor_adc_test -D ../etc" | grep "LOG NAME"
end
