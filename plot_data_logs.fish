function plot_data_logs
     # matlab -softwareopengl -nosplash -r "log = alphabot_log('$argv[1]'); log.plot_vertical([], {'imu_accelerometer'}); log.plot_horizontal([], {'imu_accelerometer'})"
    /usr/bin/matlab -softwareopengl -nosplash -r "log = alphabot_log('$argv[1]', '$argv[2]'); pv = log.plot_vertical([], {'imu_accelerometer'}); ph = log.plot_horizontal([], {'imu_accelerometer'});  linkaxes([ph,pv],'x');"   
end
