function ll --wraps=ls
exa --bytes --long --header --icons --git $argv --sort newest
end
