function view_log_from_timestamp
set log_name (ag "$argv[1]" -l | grep alphabot)
nvim log_name
end
