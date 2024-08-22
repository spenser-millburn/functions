# Defined in /tmp/fish.FSxxBC/cdbuild.fish @ line 2
function cdbuild
alphabot
# cd $ENVDIR/build/(branchname)
# cd $ENVDIR/repo/dev-console/share/build/
cd $ALPHABOT_BUILD_DIR/"$argv[1]"
end
