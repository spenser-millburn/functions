function fuzzbots
history | grep -Eo 'B[0-9]{7}[A-Z0-9]{2}'| awk '!seen[$0]++' | fzf
end
