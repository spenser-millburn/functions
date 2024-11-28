function remove_files_by_regex
    if test (count $argv) -ne 1
        echo "Usage: remove_files_by_regex <regex>"
        return 1
    end

    set regex $argv[1]
    find . -type f -regex $regex -exec rm -f {} +
end
