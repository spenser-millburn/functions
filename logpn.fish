function logpn
logls $argv[1] latest $argv[2] | getfield 9 | cut -d . -f 1
end
