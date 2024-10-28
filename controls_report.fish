function controls_report
set log_name $argv[1]
set dest_path (logdir)/$log_name/$log_name-data-report.html
curl -X 'GET' \
"http://localhost:8000/get-object/plots/$log_name-data-report.html" \
  -H 'accept: application/json' > $dest_path
google-chrome $dest_path

end
