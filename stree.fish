function stree
alphabot
set -gx AB_TICKET (git branch -r | fzf | rev | cut -d '/' -f 1 | rev)
alphabot
end
