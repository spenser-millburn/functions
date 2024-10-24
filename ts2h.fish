function ts2h
 date -d  @(math $argv[1] \/ 1000000) +"%Y-%m-%d %H:%M:%S.%3N" 
end
