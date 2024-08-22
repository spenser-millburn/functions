function generate_alphabot_cmake_files

    if [ "$argv[1]" = "7.1" ]
      qnx_71_toolchain 
      set PWDBUFFER $PWD
      mkdir -p $HOME/build/(branchname)/7.1
      cd $HOME/build/(branchname)/7.1
      eval "/usr/bin/cmake\
      -DCMAKE_MAKE_PROGRAM=/opt/alert/toolchains/qnx-sdp/7.1.0/host/linux/x86_64/usr/bin/make\
      -DCMAKE_SYSTEM_NAME='QNX'\
      -DCMAKE_C_COMPILER=/opt/alert/toolchains/qnx-sdp/7.1.0/host/linux/x86_64/usr/bin/ntoaarch64-gcc\
      -DCMAKE_CXX_COMPILER=/opt/alert/toolchains/qnx-sdp/7.1.0/host/linux/x86_64/usr/bin/ntoaarch64-g++\
      -DCMAKE_EXPORT_COMPILE_COMMANDS=1\
      -DCMAKE_TOOLCHAIN_FILE=/opt/alert/toolchains/qnx-sdp/7.1.0/aarch64.cmake\
      -G 'CodeBlocks - Unix Makefiles'\
      $PWDBUFFER"
      cd $PWDBUFFER
   end
   if [ "$argv[1]" = "7.0" ]
       qnx_70_toolchain 
       set PWDBUFFER $PWD
       mkdir -p $HOME/build/(branchname)/7.0
       cd $HOME/build/(branchname)/7.0
       eval "/usr/bin/cmake\
       -DCMAKE_MAKE_PROGRAM=/opt/alert/toolchains/qnx-sdp/7.0.0/host/linux/x86_64/usr/bin/make\
       -DCMAKE_C_COMPILER=/opt/alert/toolchains/qnx-sdp/7.0.0/host/linux/x86_64/usr/bin/ntoaarch64-gcc-5.4.0\
       -DCMAKE_CXX_COMPILER=/opt/alert/toolchains/qnx-sdp/7.0.0/host/linux/x86_64/usr/bin/ntoaarch64-g++-5.4.0\
       -DCMAKE_EXPORT_COMPILE_COMMANDS=1\
       -DCMAKE_TOOLCHAIN_FILE=/opt/alert/toolchains/qnx-sdp/7.0.0/armv7.cmake\
       -G 'CodeBlocks - Unix Makefiles'\
       $PWDBUFFER"
       cd $PWDBUFFER
   end
end
