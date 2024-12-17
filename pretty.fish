function pretty
  if not test -t 0
    # echo "There are lines in the pipe."
    while read line
        echo $line >> /tmp/test.md
    end
    mdview /tmp/test.md
    rm /tmp/test.md
  # else
    # echo "The pipe is empty."
  end
end
