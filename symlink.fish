function symlink
    for file in $argv
        set base_name (basename $file .(string split -r . $file)[-1])
        ln -s $file $base_name
    end
end
