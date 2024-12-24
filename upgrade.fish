function upgrade
 helm upgrade --install traefik traefik/traefik -f values.yaml -n traefik  
end
