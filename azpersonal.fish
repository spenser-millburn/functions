function azpersonal
az account set --subscription 1b1cb93d-78eb-4789-9021-5834d627fc6f
az aks get-credentials --resource-group actorai --name actorai --overwrite-existing
kc config set-context --current --namespace=apps
end
