function consolidate_thl_files
    set base_file (find . | ag $ALPHABOT_RAW_TEXT_LOG_REGEX)
    if test -z "$base_file"
        echo "No base .thl file found."
        return 1
    end

    for numbered_file in ( find . | ag $ALPHABOT_RAW_TEXT_NUMBERED_LOG_REGEX| sort -V)
      echo $numbered_file
        cat $numbered_file>>  $base_file
        rm $numbered_file
    end

    echo "Consolidation complete for $base_file."
end
