function walk_and_cat
    for file in (find . -type f | grep -v ".git" | grep -v ".jpg")
        echo $file
        if file $file | grep -q text 
            cat $file
        else
            echo "Skipping binary file: $file"
        end
    end
end
