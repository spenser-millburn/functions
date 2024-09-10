function findfatals
for log in (findlogs); ag -l "fault_$argv Type:Fatal" $log; end
end
