function findr
set fpath (find . | fzf -e | sed '/\\\ /g' | sed 's:[^/]*$::') 
cd $fpath
end
