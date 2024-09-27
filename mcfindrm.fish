function mcfindrm
mc find myminio/alphabot-logs-bucket --name "alphabo*.txt" --exec "mc rm {}"
end
