function log2h
thl (logdir)/$argv[1]/$argv[1].key.thl (logdir)/$argv[1]/$argv[1].thl | awk '{ if (NF > 3) { $1=$2=$3=""; print $0 } }' | sudo tee (logdir)/$argv[1]/$argv[1].txt
sudo chmod a+rw (logdir)/$argv[1]/$argv[1].txt
end

