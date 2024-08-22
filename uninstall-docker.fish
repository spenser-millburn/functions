function uninstall-docker
sudo apt-get remove --purge docker"*" -y
sudo rm -rf /var/run/docker.sock
sudo rm /etc/apparmor.d/docker
sudo rm -rf /var/lib/docker /etc/docker
sudo rm -rf ~/.docker
sudo rm -rf /etc/docker
sudo rm -rf /usr/local/bin/docker-compose
end
