function port_forward
ssh -N -L $argv[2]:$argv[1]:$argv[2] $argv[1]
end
