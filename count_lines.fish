function count_lines
    for file in *
        wc -l $file
    end
end
