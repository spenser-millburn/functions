function portgrep
 netstat -tulnep | grep $argv
end
