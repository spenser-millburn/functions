function agcmp
alphabot 
set diff (git diff)
set stat (git status)
set ticket (branchname | cut -d "-" -f1-2)
set message (g "diff : $diff , status: $stat. please write a 5 word commit message")
set message_type (g "diff : $diff , status: $stat. please respond in one word if this is an ADD, REMOVE, UPDATE or FIX")
git commit -am "[$ticket][$message_type] $message"
git push
end
