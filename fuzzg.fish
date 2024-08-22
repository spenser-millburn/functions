function fuzzg
git show (git log --oneline --format='%h %an %s' | fzf -e | cut -d " " -f 1)
end
