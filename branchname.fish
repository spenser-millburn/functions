# Defined in /tmp/fish.BfrMng/branchname.fish @ line 2
function branchname
  git rev-parse --abbrev-ref HEAD
end
