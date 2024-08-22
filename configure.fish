function configure
    if [ "$argv[1]" = "x86_64" ]
   alert-utils builder-gcc bash -c "source ~/.bash_profile; cd /root/alphabot;./runme_cmake.sh -g 1 --args $ALPHABOT_BUILD_ARGS" | sed "s|/root\/alphabot|$ALPHABOT_REPO_DIR|g"
   fish
  end
    if [ "$argv[1]" = "linux" ]
   alert-utils builder-gcc-aarch64 bash -c "source ~/.bash_profile; cd /root/alphabot;./runme_cmake.sh --args $ALPHABOT_BUILD_ARGS" | sed "s|/root\/alphabot|$ALPHABOT_REPO_DIR|g"
   fish
  end
  if [ "$argv[1]" = "70" ]
   alert-utils builder-qcc70 bash -c "source /opt/alert/toolchains/qnx-sdp/7.0.0/qnxsdp-env.sh ;source ~/.bash_profile; cd /root/alphabot; ./runme_cmake.sh -g 1 -t /opt/alert/toolchains/qnx-sdp/7.0.0/armv7.cmake --args $ALPHABOT_BUILD_ARGS" | sed "s|/root\/alphabot|$ALPHABOT_REPO_DIR|g"
  end
  if [ "$argv[1]" = "71" ]
   alert-utils builder-qcc71 bash -c "source /opt/alert/toolchains/qnx-sdp/7.1.0/qnxsdp-env.sh;source ~/.bash_profile; cd /root/alphabot;./runme_cmake.sh -g 1 -t /opt/alert/toolchains/qnx-sdp/7.1.0/aarch64.cmake --args $ALPHABOT_BUILD_ARGS" | sed "s|/root\/alphabot|$ALPHABOT_REPO_DIR|g"
  end

end
