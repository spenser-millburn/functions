# Defined in /tmp/fish.XLu6Uy/launch_clion.fish @ line 1
function launch_clion
ssh-agent
ssh-add
clion . > /dev/null 2>&1 &
end
