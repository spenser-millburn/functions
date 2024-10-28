function currentdir
pwd | awk -F/ '{print $NF}'
end
