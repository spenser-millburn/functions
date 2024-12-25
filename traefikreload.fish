function traefikreload
helm uninstall traefik -n traefik  && helm upgrade --install traefik traefik/traefik -f values.yaml -n traefik 
end
