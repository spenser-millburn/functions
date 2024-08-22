function alert-utils
  docker compose -f $ENVDIR/repo/dev-console/embedded-utils/docker-compose.yml run -it $argv
end
