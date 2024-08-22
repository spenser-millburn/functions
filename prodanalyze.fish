function prodanalyze
 set log_name (abl_fish $argv[1]) 
 set curwd (pwd)
 background gnome-terminal -- fish -c "plot_data_logs $curwd $log_name"
 background gnome-terminal -- fish -c "lnav $curwd/$log_name.txt"
 
end
