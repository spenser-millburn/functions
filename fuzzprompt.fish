function fuzzprompt
 g (cat $PENVDIR/repo/llmprompts/prompts.txt | fzf -e)"$argv"
end
