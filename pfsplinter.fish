function pfsplinter
alphabot
# set FILE_PATH (libdir 7.1)/libdriver_line_sensor_adc.so
# scp $FILE_PATH $argv[1]:/opt/alphabot/lib/
# set FILE_PATH (libdir 7.1)/libhal_line_sensor.so
# scp $FILE_PATH $argv[1]:/opt/alphabot/lib/
# set FILE_PATH (bindir 7.1)/line_sensor_adc_test
# scp $FILE_PATH $argv[1]:/opt/alphabot/bin
# ssh -t root@10.105.28.13 "export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot';cd /opt/alphabot/bin;"
set TARGET_LIB_DIR (botdir)/$argv[1]/alphabot/lib/
set TARGET_BIN_DIR (botdir)/$argv[1]/alphabot/bin/

set FILE_PATH (builddir)/7.1/driver/line_sensor/src/libdriver_line_sensor_adc.so
# (libdir 7.1)/libdriver_line_sensor_adc.so
cp $FILE_PATH $TARGET_LIB_DIR
#
set FILE_PATH (builddir)/7.1/driver/line_sensor/src/libdriver_line_sensor.so
cp $FILE_PATH $TARGET_LIB_DIR

set FILE_PATH (builddir)/7.1/hal/line_sensor/src/libhal_line_sensor.so
cp $FILE_PATH $TARGET_BIN_DIR
end
