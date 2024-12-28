function topprocesses
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 10
end
