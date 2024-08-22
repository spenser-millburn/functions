function splitlog
  set -l cwd (pwd)
  cd $argv[1]
  set -l KEYS BCOM0 BPLA0 BTCOM CAN06 CAN20 CAN23 CSUP0 __DD0 _DMC0 ESUP0 FAPR0 FGST0 FMON0 FSOB0 ICTI0 _IMU0 ISUP0 MSUP0 PCDRV SOLO0 UCCS0 TCOM0                                                    
  mkdir -p ./threads/
  for key in $KEYS 
    thl *.key.thl *.thl $key | grep $key >> ./threads/$key.log
    # thl *.key.thl *.thl $key | grep $key | awk '{ if (NF > 3) { $1=$2=$3=""; print $0 } }'  >> ./threads/$key.log
    # cat *.txt | grep $key | awk '{ if (NF > 3) { $1=$2=$3=""; print $0 } }'  >> ./threads/$key.log
  end
  cd $cwd
end
