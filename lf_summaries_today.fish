function lf_summaries_today
lf_summaries (mc ls $AB_SUMMARY_BUCKET | sort | grep summary |grep (today) |wc -l)  
end
