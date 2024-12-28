function actoraideallocate
 az aks stop --name actorai --resource-group actorai                                                                                                                                  
 az vmss deallocate --resource-group actorai_infrastructure --name aks-agentpool-10866577-vmss
end
