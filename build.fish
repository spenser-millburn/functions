function build
  if [ "$argv[1]" = "x86_64" ]
  alert-utils builder-gcc bash -c "source ~/.bash_profile; cd /root/build/alphabot-x86_64-assert; make -j16" | sed "s|/root|$ENVDIR\/repo|g"
  # fish
  end
  if [ "$argv[1]" = "linux" ]
  alert-utils builder-gcc-aarch64 bash -c "source ~/.bash_profile; cd /root/build/alphabot-x86_64-assert; make -j16" | sed "s|/root|$ENVDIR\/repo|g"
  # fish
  end
  if [ "$argv[1]" = "70" ]
    #qnx70_toolchain
    qnx_70_toolchain
    # cd $HOME/build/alphabot-qnx-7_0_0_armv7-assert
    # make -j16
    alert-utils builder-qcc70 bash -c "source /opt/alert/toolchains/qnx-sdp/7.0.0/qnxsdp-env.sh;source ~/.bash_profile; cd /root/build/alphabot-qnx-7_0_0_armv7-assert;make -j16" | sed "s|/root\/alphabot|$ALPHABOT_REPO_DIR|g"
   # fish
  end
  if [ "$argv[1]" = "71" ]
    qnx_71_toolchain
    # cd $HOME/build/alphabot-qnx-7_1_0_aarch64-assert
    # make -j16
    alert-utils builder-qcc71 bash -c "source /opt/alert/toolchains/qnx-sdp/7.1.0/qnxsdp-env.sh;source ~/.bash_profile; cd /root/build/alphabot-qnx-7_1_0_aarch64-assert;make -j16" | sed "s|/root\/alphabot|$ALPHABOT_REPO_DIR|g"
   # fish
  end
end
