function newest
     set newest_dir (ls -1D --sort oldest | head -n 1)                                                                                                                                                            
     echo $newest_dir
end
