function dlargest
docker images --format '{{.Size}}\t{{.Repository}}:{{.Tag}}' | sort -rh | head -n 15
end
