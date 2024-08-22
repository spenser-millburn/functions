function get_logs_of_interest
    set cwd $PWD
    for file in (find . -name "summary.txt")
        set timestamp (cat $file | grep $argv[1]| getfields 1 2 ) ; 
        cd (echo $file | sed '/\\\ /g' | sed 's:[^/]*$::') 
        set found_log (abl_fish $timestamp)
        #From timestamp find log
        abl_fish $timestamp>foundlog.txt
        mkdir -p $cwd/foundlogs_$argv[1]/$found_log
        echo "HERE: $cwd/foundlogs/$found_log"
        #move found log to logs 
        cp ./$found_log* $cwd/foundlogs_$argv[1]/$found_log  

        cd $cwd
    end
end
