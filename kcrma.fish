function kcrma
for file in (find . | grep yaml); kc delete -f $file;end
end
