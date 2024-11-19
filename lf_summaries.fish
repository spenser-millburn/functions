function lf_summaries

    for line in (mc ls myminio/logfisher-summaries | sort | tail -n $argv[1])
        mc cp $AB_SUMMARY_BUCKET/(echo $line | getfield 6) .
    end
end
