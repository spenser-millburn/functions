function count_lines_in_repo
    if test (count $argv) -ne 1
        echo "Usage: count_lines_in_repo <repository_path>"
        return 1
    end

    set repo_path $argv[1]

    if not test -d $repo_path
        echo "Error: Directory '$repo_path' does not exist."
        return 1
    end

    find $repo_path -type f \( -name '*.c' -o -name '*.cpp' -o -name '*.h' -o -name '*.py' -o -name '*.java' -o -name '*.js' -o -name '*.sh' -o -name '*.ts' -o -name '*.tsx' \) -not -path '*/node_modules/*' -not -path '*/minio_data/*' | xargs wc -l | tail -n 1
end
