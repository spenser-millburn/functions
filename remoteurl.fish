function remoteurl
 git remote -v | head -n 1 | getfield 2
end
