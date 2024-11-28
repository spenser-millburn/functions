function runclippy
    set temp_file (mktemp)
    xclip -selection clipboard -o > $temp_file
    python3 $temp_file
    rm $temp_file
end
