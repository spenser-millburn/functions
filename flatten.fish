function flatten
    for dir in */
        for file in $dir/*
            mv $file .
        end
        rmdir $dir
    end
end
