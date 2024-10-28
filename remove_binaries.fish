function remove_binaries
    find . -type f -executable -exec rm -i {} +
end
