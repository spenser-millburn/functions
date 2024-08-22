function run-pipeline
docker run --entrypoint bash --rm -w $PWD -v $PWD:$PWD -v /var/run/docker.sock:/var/run/docker.sock --name testci gitlab/gitlab-runner:latest   -c "git config --global --add safe.directory '*';gitlab-runner exec docker $argv[1]"
end
