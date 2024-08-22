function check_permissions
stat -c '%a' $argv
end
