function imupfrun
alert-env build alphabot 7.1
imupf $argv[1]
run_alphabot_on_remote_target $argv[1] #| grep "LOG NAME" | cut -d " " -f 2
end
