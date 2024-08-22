function diffthread
# meld ./$argv[1]/threads/$argv[3].log ./$argv[2]/threads/$argv[3].log
meld $argv[1]/threads/$argv[3].log $argv[2]/threads/$argv[3].log
# echo "$argv[1]/threads/$argv[3].log $argv[2]/threads/$argv[3].log"
end
