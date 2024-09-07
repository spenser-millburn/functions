function clean_snap_logs
find . -type f -name '*messages*' -exec rm -f {} +
find . -type f -name '*vizier*' -exec rm -f {} +
find . -type f -name '*summary*' -exec rm -f {} +
find . -type f -name '*stdout*' -exec rm -f {} +
end
