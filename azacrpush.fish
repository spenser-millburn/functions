function azacrpush
docker tag (paste):latest devconsoleimageregistry.azurecr.io/(paste):$argv[1]
docker push devconsoleimageregistry.azurecr.io/(paste):$argv[1]
end
