function fssh
  cat ~/.ssh/config | grep HostName | cut -d " " -f7| fzf | clip

end
