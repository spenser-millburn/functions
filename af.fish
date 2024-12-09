function af
if [ "$argv[1]" = "get" ]
cda
jf rt dl "*$argv[2]*" .
end
if [ "$argv[1]" = "." ]
jf rt dl "$argv[2]/*$argv[3]*" --flat
end
if [ "$argv[1]" = "search" ]
jf rt s "$argv[2]/*$argv[3]*" | jless
end
end
