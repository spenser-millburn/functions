function cplib
cdbuild
set fpath $argv[2]
echo $fpath
scp $fpath $argv[1]:/opt/alphabot/lib/
end
