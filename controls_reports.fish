function controls_reports

    for line in (mc ls myminio/plots | grep controls | sort | tail -n $argv[1])
        mc cp $AB_PLOT_BUCKET/(echo $line | getfield 6) .
    end
end
