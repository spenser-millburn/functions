# Defined in /tmp/fish.VFhSxW/fuzzlogs.fish @ line 2
function fuzzlogs
logview (logls $argv[1] | fzf -e | getfield 7| cut -f 1 -d '.') | tr -d "*''"
end
