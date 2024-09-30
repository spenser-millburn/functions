function promptguard
    echo -n $argv
    read -l response
    if test "$response" = "y" 
    elif test "$response" = "n" 
        exit
    end
end
