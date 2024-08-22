function splinter_to_file
ssh -t splinter "export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot';cd /opt/alphabot/bin;./line_sensor_adc_test" | tee log.txt

end
