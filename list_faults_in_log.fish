function list_faults_in_log

   set -l FAULTS (thl (logdir)/$argv[1]/$argv[1].key.thl (logdir)/$argv[1]/$argv[1].thl | grep "Sent fault to MCS" )

   for FAULT in $FAULTS; 
     get_fault (echo $FAULT | cut --delimiter=' ' --fields 9 | cut -c 4-19) ;
   end

end
