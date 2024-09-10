# Defined in /tmp/fish.9FrFmq/logdir.fish @ line 2
function logdir
set -l cwd (pwd)
alphabot
set -x LOG_DIR_PATH /media/smillburn/FC70544070540434/logs

if set -q argv[1]
  echo $LOG_DIR_PATH/$argv[1]
  return 
end
echo $LOG_DIR_PATH/(branchname)
cd $cwd

end
