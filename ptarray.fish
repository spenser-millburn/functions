# Defined in /tmp/fish.xGeyjk/ptarray.fish @ line 2
function ptarray
scp -P $argv[3] $argv[1] $argv[2]:/opt/
ssh -p $argv[3] "apm install /opt/$argv[1]"
end
