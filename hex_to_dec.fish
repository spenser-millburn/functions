function hex_to_dec
    if test (count $argv) -eq 0
        echo "Usage: hex_to_dec <hex_value>"
        return 1
    end

    set hex_value $argv[1]
    set dec_value (printf "%d\n" "0x$hex_value" 2>/dev/null)

    if test "$status" -ne 0
        echo "Invalid hex value: $hex_value"
        return 1
    end

    echo $dec_value
end
