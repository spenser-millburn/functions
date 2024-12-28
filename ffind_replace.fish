function ffind_replace
  set file $argv[1]
  set search_term $argv[2]
  set replace_term $argv[3]
  sed -i "s/$search_term/$replace_term/g" $file
end
