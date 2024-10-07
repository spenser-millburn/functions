function top_ram_processes
    ps -eo pid,comm,%mem,cmd --sort=-%mem | head -n 11 | awk 'NR==1 {print $1, $2, $3, "COMMAND"} NR>1 {print $1, $2, $3, $4}'
  set total_mem (ps --sort=-%mem -eo %mem | head -n 11 | tail -n 10 | awk '{sum += $1} END {print sum}')
                  echo "Total %RAM of top 10 processes: $total_mem"

end
