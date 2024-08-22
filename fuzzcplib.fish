function fuzzcplib
cdbuild
set fpath (find . | grep -v "istage"  | grep -v "alphabot_apm" | grep -v "_CPack" |grep -v "x86_64"| grep ".so" | fzf -e )
echo $fpath
scp $fpath $argv[1]:/opt/alphabot/lib/
end
