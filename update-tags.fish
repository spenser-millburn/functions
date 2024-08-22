function update-tags
alphabot
cp $ENVDIR/build/(git rev-parse --abbrev-ref HEAD)/$argv[1]/compile_commands.json $ENVDIR/repo/alphabot
end
