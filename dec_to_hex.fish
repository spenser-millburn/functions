function dec_to_hex
    set -l decimal_number $argv[1]
    printf "%x\n" $decimal_number
end
