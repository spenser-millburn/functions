function remove_code_blocks_filter
sed '1s/^```[a-zA-Z]*//g' $file | sed  '1s/^```//g' $file | sed  '$s/^```[a-zA-Z]*//g' $file | sed  '$s/^```//g' $file

end
