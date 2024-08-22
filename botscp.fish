function botscp
 set aliases B01000029J B0200002FB B0200002HP B0200002LG B0200002YT B02000035H B03000039T B03000039X B0300003A4 B0300003AS B0300003B4 B0300003B8 B0300003BK B0300003C3 B0300003CJ B0300003CK B0300003CL B0300003CW B0300003D0 B0300003D1 B0300003DB B0300003F6 B0300003FU B0300003GW                                                                                                                             
                                                                                                                                                                                                          
 for alias in $aliases                                                                                                                                                                                    
     echo "Running commands for alias: $alias"                                                                                                                                                            
     # sshpass -p "root" ssh -J  highbay -p6001 root@$alias -t "ls /var/alphabot_log/"                                                                                                                    
     sshpass -p "root" ssh -J  highbay -p6001 root@$alias -t "ls /tmp/*.apm"                                                                                                                          
     sshpass -p "root" scp -o ProxyJump=highbay -P6001 "./alphabot-4.16.0.0.0--prod-armv7.apm" root@$alias:/tmp                                                                                                    
     sshpass -p "root" ssh -J  highbay -p6001 root@$alias -t "sh /etc/profile apm install /tmp/alphabot-4.16.0.0.0--prod-armv7.apm"                                                                                                                          
 end                                                                                                                                                                                                      
       
end
