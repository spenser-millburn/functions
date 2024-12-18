function ff
set fname  (find . | fzf -e)
echo $fname
cat $fname
end
