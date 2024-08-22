function finde
set fpath (find . | fzf -e | sed '/\\\ /g') 
fish -c $fpath                   
end
