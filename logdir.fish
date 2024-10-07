function logdir
set -l cwd (pwd)
alphabot
set -x LOG_DIR_PATH /media/archivedrive/logs

if set -q OVERRIDE_LOGDIR
  echo $LOG_DIR_PATH/$OVERRIDE_LOGDIR
  return 
end

if not exists $LOG_DIR_PATH/(branchname)
  mkdir -p $LOG_DIR_PATH/(branchname)
end

echo $LOG_DIR_PATH/(branchname)
cd $cwd

end
