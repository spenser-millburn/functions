function grun
  set cmd  (ls -1 | g build and run show command only)
  echo $cmd
  fish -c $cmd
end
