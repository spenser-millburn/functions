function findr
set fpath (find . | fzf -e | sed '/\\\ /g' | sed 's:[^/]*$::') 
if test -n "$fpath"
  cd $fpath
end
end
