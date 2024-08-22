function fuzzcsvcolumns
    head -n 1 *.csv | tr ',' '\n' | fzf -e
end
