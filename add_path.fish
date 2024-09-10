function add_path
set source ( full_path $argv[1] )
set dest /usr/bin/(basename $argv[1] | cut -d . -f 1 )
sudo ln -s $source $dest  
sudo chmod a+x $dest
end
