function askthedocs
    if test -e /tmp/askthedocs.txt
        gptfask /tmp/askthedocs.txt "$argv[2..-1]"
    else
        set links (python3 -m askthedocs.askthedocs --url $argv[1] --print-links-only --maxdepth 2 --filter-out \#)
        echo $links 
        prompt press enter to continue
        for link in $links
            curl $link | html2text >> /tmp/askthedocs.txt
        end
        gptfask /tmp/askthedocs.txt "$argv[2..-1]"
    end
end
