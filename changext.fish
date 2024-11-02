function changext
    set filename (basename $argv[1])
    set new_ext $argv[2]
    set base_name (string split -r . $filename)[1]
    echo $base_name.$new_ext
end
