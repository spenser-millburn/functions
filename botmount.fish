function botmount
mkdir -p $ENVDIR/targets/$argv[1]
background ssh -MNv $argv[1] 
# sshfs $argv[1]:$argv[2] $ENVDIR/targets/$argv[1] -o reconnect
sshfs -o allow_other,reconnect $argv[1]:$argv[2] $ENVDIR/targets/$argv[1]

cd $ENVDIR/targets/$argv[1]
end
