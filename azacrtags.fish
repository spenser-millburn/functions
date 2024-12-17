function azacrtags
az acr repository show-tags --name devconsoleimageregistry --repository $argv[1] --output table
end
