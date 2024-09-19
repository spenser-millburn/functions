function findfatals

    for line in (find . -type f -name "alphabot*key.thl" )
        echo $line | cut -d / -f 4 | cut -d . -f 1 >>deepdivelogs.txt
    end
    for log in (cat ./deepdivelogs.txt)
        find . -type f -name "$log.txt" | grep -v ablogs >>textlogs.txt
    end
    for log in (cat ./textlogs.txt)
        ag -l "FAPR0 Fault Cache id:fault_0C_05_00 Type:Fatal" $log >>logs_with_fatals.txt
    end
end
