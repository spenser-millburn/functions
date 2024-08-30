function gtestlogview
gtest $argv[1] $argv[2] $argv[3]
cdbuild alphabot-$argv[1]-assert/test/unit
thl $argv[2].key.thl $argv[2].thl | lnav
end
