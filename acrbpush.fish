function acrbpush
az acr login --name actoraicontainerregistry
dcb 2>/dev/null |tee /dev/stdout |s naming to | tail -n 1 |getfield 4 | cut -d/ -f 3|clip && azacrpush $argv[1]
end
