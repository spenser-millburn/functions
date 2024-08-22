# Defined in /tmp/fish.O9ej46/findcp.fish @ line 2
function findcp
set fpath (find . | fzf -e | sed '/\\\ /g')
cp $fpath $argv[1]
end
