function coder
  set fpath (find . | fzf -e | sed '/\\\ /g')
  code $fpath
end
