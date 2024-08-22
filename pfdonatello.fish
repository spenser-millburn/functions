# Defined in /tmp/fish.fSYbuu/pfdonatello.fish @ line 2
function pfdonatello
 # Defined in /home/smillburn/.config/fish/functions 
 alphabot
set FILE_PATH $HOME/build/(branchname)/driver/line_sensor/src/libdriver_line_sensor.so
sshpass -p Boston2020!+ scp $FILE_PATH labjumpbox:$HOME/sos/

set FILE_PATH $HOME/build/(branchname)/hal/line_sensor/src/libhal_line_sensor.so
sshpass -p Boston2020!+ scp $FILE_PATH labjumpbox:$HOME/sos/

sshpass -p Boston2020!+  ssh -t smillburn@labjumpbox "scp -P 6001 $HOME/sos/*.so root@BD0NATELL0:/opt/alphabot/lib/;"

set FILE_PATH $HOME/build/(branchname)/exec/lineSensorAdcTest/bin/line_sensor_adc_test
sshpass -p Boston2020!+ scp $FILE_PATH labjumpbox:$HOME/executables/

set FILE_PATH $HOME/line-sensor-v2-bringup/linefollower_rear_devspi2
sshpass -p Boston2020!+  scp $FILE_PATH labjumpbox:$HOME/executables/

sshpass -p Boston2020!+  ssh -t smillburn@labjumpbox "scp -P 6001 $HOME/executables/* root@BD0NATELL0:/opt/alphabot/bin/;"
end
