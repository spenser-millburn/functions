function remove_tarballs
    find . -type f -name '*.tar*' -exec rm -f {} +
end
