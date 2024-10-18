function csvcolumns
  head -n 1 $argv[1]| tr ',' '\n'
end
