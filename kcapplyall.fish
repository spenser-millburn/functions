function kcapplyall
for file in (find . | grep yaml); kc apply -f $file;end
end