function atree
alphabot
set -gx AB_TICKET (git branch -r | fzf | rev | cut -d '/' -f 1 | rev)
git worktree add ../alphabot-worktree/$AB_TICKET
end
