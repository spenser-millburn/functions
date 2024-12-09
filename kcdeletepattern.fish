function kcdeletepattern
for line in (kc get all -n apps | grep $argv); kc delete  (echo $line| getfield 1);end
end
