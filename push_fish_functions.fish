function push_fish_functions
set cwd $PWD
cdf
git add *.fish
gcpush m (git diff master | g make a one line commit message respond with only 10 words or less)
cd $cwd
end
