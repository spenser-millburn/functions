function askthedocs
    if test -e askthedocs.txt
        gptfask /tmp/askthedocs.txt "$argv[2..-1]"
    else
        set links (python3 -m askthedocs.askthedocs --url $argv[1] --print-links-only --maxdepth 3 --filter-out \#)
        for link in $links
            curl $link | html2text >> askthedocs.txt
        end
        gptfask /tmp/askthedocs.txt "$argv[2..-1]"
    end
end
