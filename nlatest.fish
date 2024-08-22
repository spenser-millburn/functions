function nlatest
ls -1 --sort newest | tail -n $argv[1]  |head -n 1
end
