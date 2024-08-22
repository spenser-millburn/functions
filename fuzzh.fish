function fuzzh
set some_command (history | fzf -e ) 
echo $some_command
end
