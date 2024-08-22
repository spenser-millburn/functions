function findx
set fpath (find . | grep $argv[1]) 
echo $fpath
if set -q argv[2]
  fish -c $fpath                   
end

end
