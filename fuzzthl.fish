function fuzzthl
set log_name (echo (fuzzls) | cut -d'.' -f1)
thl $log_name.key.thl $log_name.thl | lnav
end
