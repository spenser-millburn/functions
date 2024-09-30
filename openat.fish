function openat
    set search_result (ag "$argv" | fzf -e)
    set file (echo $search_result | cut -d: -f1)
    set line (echo $search_result | cut -d: -f2)
    vim +$line $file
end
