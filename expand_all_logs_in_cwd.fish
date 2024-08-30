function expand_all_logs_in_cwd
    if not test -d ./textlogs
      sudo mkdir -p ./textlogs
    end
    for file in (find . -name "*.key.thl")
        set filename (echo $file | cut -d . -f 2| tr -d "/")
        echo $filename
        thl $filename.key.thl $filename.thl >./textlogs/$filename.txt
    end
end
