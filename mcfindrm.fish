function mcfindrm
mc find $argv[1] --name "*$argv[2..-1]" --exec "mc rm {}"
end
