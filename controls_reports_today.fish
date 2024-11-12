function controls_reports_today
controls_reports (mc ls $AB_PLOT_BUCKET | sort | grep controls |grep (today) |wc -l)  
end
