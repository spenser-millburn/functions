function promptguard
    e $argv "(y/n)"
    read -l response
    if test "$response" = "y" 
      e continuing 
    else if test "$response" = "n" 
        e exiting 
        exit
    end

end
