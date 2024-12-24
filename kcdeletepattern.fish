function kcdeletepattern
for line in (kc get all | grep $argv); kc delete  (echo $line| getfield 1);end
end
