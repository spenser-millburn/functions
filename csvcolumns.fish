function csvcolumns
  head -n 1 $argv[1].csv | tr ',' '\n'
end
