function gcpush
  if [ "$argv[1]" = "m" ]
    # git commit -a -m (commitmsg) && git push origin (branchname)
    git commit -a -m "$argv[2..-1]" && git push origin (branchname)
  else
    echo "hello world"
    git commit -a && git push origin (branchname)
  end

end
