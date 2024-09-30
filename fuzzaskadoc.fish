function fuzzaskadoc
 set links (python3 -m askthedocs.askthedocs --url "$argv[1]" --print-links-only --maxdepth 2 --filter-out \#)
echo $links | g from this list please select the link most related to "$argv[2]" you may only return one link | xargs curl | html2text | g "$argv[3..-1]"
end
