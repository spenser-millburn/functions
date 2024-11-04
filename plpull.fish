function plpull
set log_name $argv[1]
 mcfindcp $AB_LOG_BUCKET $log_name
 mcfindcp $AB_PLOT_BUCKET $log_name
end
