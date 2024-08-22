function alert_install_dev_environment
    alert_configure_jfrog
    alert_configure_apt

    apt-get update
    apt-get install -y protobuf alert-alphabot git curl gcc-5 g++-5 gcc-7 g++-7 gcc-8 g++-8

    update-alternatives --remove-all gcc
    update-alternatives --remove-all g++
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 30
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 20
    update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 10
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-5 30
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 20
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 10
    update-alternatives --install /usr/bin/cc cc /usr/bin/gcc 30
    update-alternatives --set cc /usr/bin/gcc
    update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++ 30
    update-alternatives --set c++ /usr/bin/g++

end
