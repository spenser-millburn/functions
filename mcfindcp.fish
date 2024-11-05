function mcfindcp
set bucket $argv[1]
mc find $bucket --name "*$argv[2..-1]*" --exec "mc cp {} ."
end
