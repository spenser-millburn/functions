# Defined in /tmp/fish.aeBnlH/vindr.fish @ line 1
function vindr
set fpath (find . | fzf -e | sed '/\\\ /g')
vim $fpath
end
