function blvgtest
build x86_64
gtest $argv[1] $argv[2] $argv[3]
cdbuild alphabot-$argv[1]-assert/test/unit

echo (read --prompt-str="Press Enter to View the log")
thl $argv[2].key.thl $argv[2].thl | lnav
end
