function fuzzkill
sudo kill -9 (ps aux | fzf -e | getfield 2) 
end
