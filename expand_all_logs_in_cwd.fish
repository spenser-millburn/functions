function expand_all_logs_in_cwd
    for key in (find . | grep alphabot | grep thl | grep key)
        set logname (echo $key |cut -d "." -f 2| cut -d "/" -f 2)
        thl --ts utc $logname.key.thl $logname.thl >$logname.txt
    end
end
