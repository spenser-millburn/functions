function alert_configure_apt
bash -c "cat <<EOF > /etc/apt/preferences.d/alert
Package: *
Pin: origin alertinnovation.jfrog.io
Pin-Priority: 510
EOF"
echo "deb [trusted=yes] https://alertinnovation.jfrog.io/artifactory/qnx-alert-dev focal main" >/etc/apt/sources.list.d/alert-jfrog.list
echo "# Adding these as a workaround to allow access to gcc-5 packages" >>/etc/apt/sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ bionic main" >>/etc/apt/sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ bionic universe" >>/etc/apt/sources.list
mkdir /etc/gcrypt
echo all >>/etc/gcrypt/hwf.deny
end
