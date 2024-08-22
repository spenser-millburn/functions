function searchalllogs
for dir in (ls -D); cd $dir && searchlogs $argv[1] && cd ..; end;
end
