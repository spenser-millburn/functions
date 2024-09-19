function findq
set fpath (find . | grep -E "*.kql"| fzf -e ) 
if test -n "$fpath"
  echo $fpath
  qr $fpath 
end
end
