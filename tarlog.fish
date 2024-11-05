function tarlog
set (cat (find $argv | ag $ALPHABOT_TEXT_LOG_REGEX) | head -n 1 | grep GRID_ID |  grep -oP "(?<=GRID_ID=)[^;]*")
end
