function shutdownbot
ssh -t $argv[1] -t "shutdown"
end
