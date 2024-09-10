function findlogs
 find . | grep -v ablog|grep -v data |grep -v stdout|grep -v faults| grep -E 'alphabot.*.txt'
end
