function alphabot
  if set -q AB_TICKET
  cd $ENVDIR/repo/alphabot-worktree/(echo $AB_TICKET)
  else
  cd $ENVDIR/repo/alphabot
  end

  
end
