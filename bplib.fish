function bplib
build 70
cdbuild
set fpath (find . | grep -v "istage"  | grep -v "x86_64"| grep ".so" | fzf -e )
echo $fpath
slayalphabot $argv[1]
sleep 5
scp $fpath $argv[1]:/opt/alphabot/lib/
run_alphabot_on_remote_target $argv[1]
end
