function install-docker
  sudo apt-get update
  sudo apt update
  sudo apt install apt-transport-https ca-certificates curl software-properties-common
  sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
  sudo apt update
  apt-cache policy docker-ce
  sudo apt install docker-ce docker-compose-plugin -y
  sudo systemctl status docker
end
