function fuzzr
set fpath (fuzz | sed '/\\\ /g' | sed 's:[^/]*$::') 
cd $fpath
end
