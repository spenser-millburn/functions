# Defined in /tmp/fish.85uqV0/background.fish @ line 2
function background
nohup $argv > /dev/null 2>&1 & 
disown (jobs -p)
end
