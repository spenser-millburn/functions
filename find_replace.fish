function find_replace
    for file in (find . -type f)
        sed -i 's/$argv[1]/$argv[2]/g' $file
    end
end
