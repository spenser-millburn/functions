function ziplogview
  alphabot
  mkdir -p $ENVDIR/logs/(branchname)
  unzip "$DOWNLOADS/$argv[1].zip" -d $ENVDIR/logs/(branchname)/$argv[1]
  logview $argv[1]
end
