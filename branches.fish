function branches
git checkout (git branch |fzf -e | string trim -c " ")
end
