function delete_branch
set branch_name $argv[1]
 git branch -d $branch_name                                                                                                                         master ⬇ ✭ ◼
                       git push origin --delete $branch_name
end
