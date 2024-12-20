function actoraideallocate
 az aks stop --name actorai --resource-group actorai                                                                                                                                  
 az vmss deallocate --resource-group MC_actorai_actorai_eastus --name aks-b2snodepool-24186406-vmss
end
