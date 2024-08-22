function current_git_hash
git log --oneline | head --lines 1 | cut --fields=1 --delimiter=" " 
end
