function fpclip
 echo (cat $PENVDIR/repo/llmprompts/prompts.txt | fzf -e)"$argv" | clip
end
