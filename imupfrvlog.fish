function imupfrvlog
imupfrun $argv | grep "LOG_NAME" | cut -d ' ' -f 3
end
