# Defined in /tmp/fish.AOJhMR/pfleonardo.fish @ line 2
function pfleonardo
 # Defined in /home/smillburn/.config/fish/functions 
 #
set_alphabot_target (full_path alphabot-4.12.0.0-smillburn-prod-aarch64.apm) 10.166.0.10 2022 root@B04-LEO-NARD 6001
sshpass -p "Boston2020!@#" ssh -t -p $JUMP_PORT $JUMP_IP 'mkdir $HOME/sos'
sshpass -p "Boston2020!@#" ssh -t -p $JUMP_PORT $JUMP_IP 'mkdir $HOME/executables'
alphabot

set FILE_PATH $HOME/build/(branchname)/7.1/driver/line_sensor/src/libdriver_line_sensor_adc.so
scp -P 2022 $FILE_PATH smillburn@10.166.0.10:$HOME/sos

set FILE_PATH $HOME/build/(branchname)/7.1/hal/line_sensor/src/libhal_line_sensor.so
scp -P 2022 $FILE_PATH smillburn@10.166.0.10:$HOME/sos

set FILE_PATH $HOME/build/(branchname)/7.1/exec/lineSensorAdcTest/bin/line_sensor_adc_test
scp -P 2022 $FILE_PATH smillburn@10.166.0.10:$HOME/executables

sshpass -p "Boston2020!@#" ssh -t -p 2022 $JUMP_IP "scp -P 6001 $HOME/sos/*.so $TARGET_IP:/opt/alphabot/lib/;"
sshpass -p "Boston2020!@#" ssh -t -p 2022 $JUMP_IP "scp -P 6001 $HOME/executables/* $TARGET_IP:/opt/alphabot/bin/;"
end
