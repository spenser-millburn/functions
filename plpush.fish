function plpush
  set log_name $argv[1]
  set grid_id (cat (find $log_name| ag $ALPHABOT_TEXT_LOG_REGEX) | grep GRID_ID |  grep -oP "(?<=GRID_ID=)[^;]*")
  set tarname $grid_id-(basename $log_name.tar.gz)
  echo $tarname
  tar czf $tarname $log_name
  mc cp $tarname $AB_LOG_BUCKET
end
