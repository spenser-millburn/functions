function imupf
alphabot
# set FILE_PATH (libdir 7.1)/libdriver_line_sensor_adc.so
# scp $FILE_PATH $argv[1]:/opt/alphabot/lib/
# ssh -t root@10.105.28.13 "export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot';cd /opt/alphabot/bin;"
set TARGET_LIB_DIR (botdir)/$argv[1]/alphabot/lib/
set TARGET_BIN_DIR (botdir)/$argv[1]/alphabot/bin/

set FILE_PATH (builddir)/7.1/driver/imu_spi/src/libdriver_imu_spi.so
cp $FILE_PATH $TARGET_LIB_DIR

set FILE_PATH (builddir)/7.1/hal/imu_spi/src/libhal_imu_spi.so
cp $FILE_PATH $TARGET_LIB_DIR

set FILE_PATH (builddir)/7.1/app/drive/sensing/imu_observer/src/libimu_observer.so
cp $FILE_PATH $TARGET_LIB_DIR
 
set FILE_PATH (builddir)/7.1/src/alert/statistics/src/libstatistics.so
cp $FILE_PATH $TARGET_LIB_DIR
end
