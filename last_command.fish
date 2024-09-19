function last_command
    history | head -n 1 | string trim
end
