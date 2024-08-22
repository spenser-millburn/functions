function latest
if set -q argv[1]
    ls -1 --sort newest | tail -n $argv[1]
else
ls -1 --sort newest | tail -n 1
 end
 end
