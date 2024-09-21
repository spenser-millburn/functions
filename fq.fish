function fq
  set cwd (pwd)
  cdq
set fpath (find . | grep -E "*.kql"| fzf -e ) 
if test -n "$fpath"
  echo (full_path $fpath) 
  q $fpath 
end
cd $cwd
end
