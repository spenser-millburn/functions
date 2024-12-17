function azacrpush
# docker tag (paste):latest devconsoleimageregistry.azurecr.io/(paste):$argv[1]
# docker push devconsoleimageregistry.azurecr.io/(paste):$argv[1]
docker tag (paste):latest actoraicontainerregistry.azurecr.io/(paste):$argv[1]
docker push actoraicontainerregistry.azurecr.io/(paste):$argv[1]
end
