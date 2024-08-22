function searchsummaries
    set search_pattern $argv[1]
    find . -type f -name 'summary.txt' -exec ag "05_0E" --filename {} +
end
