function fqe
  set cwd (pwd)
  cdq
set fpath (find . | grep -E "*.kql"| fzf -e ) 
if test -n "$fpath"
  code (full_path $fpath) 
end
cd $cwd
end
