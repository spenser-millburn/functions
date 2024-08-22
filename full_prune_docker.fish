# Defined in /tmp/fish.rrZ8wn/full_prune_docker.fish @ line 1
function full_prune_docker
docker container prune
docker image prune -a
docker system prune --volumes
end
