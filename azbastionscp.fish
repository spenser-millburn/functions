function azbastionscp
set vnet_name $argv[1] 
set vm_name $argv[2]
# az network bastion ssh --name $vnet_name-bastion --resource-group embd-tools --target-resource-id /subscriptions/c1a06b80-32e6-4e6b-a950-fa7d5afa62b8/resourceGroups/embd-tools/providers/Microsoft.Compute/virtualMachines/$vm_name --auth-type AAD
az network bastion ssh --name $vnet_name-bastion --resource-group embd-tools --target-resource-id /subscriptions/c1a06b80-32e6-4e6b-a950-fa7d5afa62b8/resourceGroups/embd-tools/providers/Microsoft.Compute/virtualMachines/$vm_name --auth-type AAD --port 22 --local-port 2022

end
