function azwork
 az account set --subscription c1a06b80-32e6-4e6b-a950-fa7d5afa62b8
 az aks get-credentials --resource-group embd-tools --name devconsole --overwrite-existing
 kc config set-context --current --namespace=apps
end
