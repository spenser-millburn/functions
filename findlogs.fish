function findlogs
 find . | grep -v -e ablog -e data -e stdout -e faults | grep -E 'alphabot.*.txt'

end
