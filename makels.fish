function makels
make -pRrq -f Makefile : 2>/dev/null | awk -F: '/^# Files/,/^# Finished Make data base/ { if ($1 !~ "^[#.]") print $1 }'| grep -v "MAKE" |grep -v "echo"| sort | uniq

end
