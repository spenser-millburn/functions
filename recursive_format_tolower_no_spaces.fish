function recursive_format_tolower_no_spaces
find . -type d -exec bash -c 'mv "$0" "${0// /_}"' {} \; 
rename 'y/A-Z/a-z/' *
end
