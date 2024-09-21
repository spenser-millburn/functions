function q
 sh -c "adxloginexecute --kql-file $argv[1] --rich-output $arg[2..-1]"   
end
