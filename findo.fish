function findo
set fpath (find . | fzf -e | sed '/\\\ /g') 
open $fpath                   
end
