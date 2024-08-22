function searchlogs
    set SEARCH_PATTERN $argv

    echo "Log Name        |   Count of $SEARCH_PATTERN mentions   |       Grid ID"                                                                                                                                                                                                                                                                                                                                                     
    echo "-----------------"                                                                                                                                                                                                                                                                                                                                                     
    for log in (ls -D --sort newest)
        thl ./$log/$log.key.thl ./$log/$log.thl 2>/dev/null > /tmp/$log.log
        # grep $SEARCH_PATTERN $log/$log.log
        set count ( cat /tmp/$log.log | grep "$SEARCH_PATTERN" | wc -l) 
        set grid_id ( cat /tmp/$log.log | grep GRID_ID |  grep -oP "(?<=GRID_ID=)[^;]*") 
        echo "$log | $count |$grid_id"                                                                                                                                                                                                                                                                                                                                                 
    end | column -t -s '|'                                                                                                                                                                                                                                                                                                                                                       
end
