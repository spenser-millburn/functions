function setlogdir
set -g OVERRIDE_LOGDIR (ls -1 (logdir)/.. |fzf -e )
echo $OVERRIDE_LOGDIR
cdlogs
end
