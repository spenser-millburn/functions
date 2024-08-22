function push_fish_config
  ssh $argv[1] -t "mkdir -p ~/.config/fish/functions"
  scp -r $HOME/.config/fish/functions/* $argv[1]:~/.config/fish/functions
  sudo scp -r /usr/share/fish/functions/* $argv[1]:/usr/share/fish/functions
end
