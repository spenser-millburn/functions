function expandlogs
    set SEARCH_PATTERN $argv
    for log in (ls -D --sort newest)
        thl ./$log/$log.key.thl ./$log/$log.thl 2>/dev/null > ./$log/$log.log
    end                                                                                                                                                                                                                                                                                                                                                       
end
