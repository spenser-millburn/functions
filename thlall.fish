function thlall
 for file in (ls -1 *.key.thl ); thl $file (string replace -r '\.key' '' $file) > (string replace -r '\.key.thl' '' $file).txt ;end
end
