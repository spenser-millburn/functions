function walk_and_cat_source
    for file in (find . -type f)
        if file $file | grep -qE 'Python|C\+\+|Java|JavaScript|Ruby|Perl|PHP|HTML|CSS|Shell'
            echo $file
            cat $file
        end
    end
end