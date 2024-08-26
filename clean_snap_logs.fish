function clean_snap_logs
find . -type f -name '*messages*' -exec rm -f {} +
find . -type f -name '*vizier*' -exec rm -f {} +
find . -type f -name '*summary*' -exec rm -f {} +
end
