function kaa
     for file in *.yaml                                                                                                                                                               
         kubectl apply -f "$file"                                                                                                                                                     
     end     
end
