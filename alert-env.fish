function alert-env
  set -x STARTDIR $PWD
  #--------------------------------[INSTALLER]--------------------------------
  if [ "$argv[1]" = "install" ]
    alert-envcfg
    git clone git@gitlab.alertinnovation.com:embd/alert-dev-essential.git
    mkdir build 
    mkdir repo
    mkdir targets
    mkdir .config
    mkdir .logdb
    mkdir logs
    cd repo
    git clone git@gitlab.alertinnovation.com:embd/alphabot/alphabot.git
    cd ../alert-dev-essential/environment
    source create_base_env.fish

  else if test -z $argv[1]
    cd $ENVDIR/alert-dev-essential/custom-environment
    docker exec -it custom-environment-custom-env-1 /bin/fish

  else
    cd $ENVDIR/alert-dev-essential/custom-environment
    switch $argv[1]

      case "up"
        docker compose up -d 

      case "down"
        docker compose down

      case "ide"
        background docker exec custom-environment-custom-env-1 "/opt/clion/clion-2023.1.1/bin/clion.sh" 

      case "restart"
        echo [ STOPPING ENV ]
        docker compose down
        echo [ STARTING ENV ]
        docker compose up -d 

      case "cmd"
        docker exec custom-environment-custom-env-1 fish -c $argv[2..]

      case "build"
        switch $argv[2]

        case "env" 
          docker compose build --no-cache 
          alert-env restart
          sudo apt-get install --only-upgrade alert-shell -y 

        case "benv" #build base environment 
          cd $ENVDIR/alert-dev-essential/environment
          docker compose build --no-cache 

        case "alphabot"
          docker exec custom-environment-custom-env-1 fish -c "build $argv[3]"
        end

      case "package"
        switch $argv[2]
        case "alphabot"
          docker exec custom-environment-custom-env-1 fish -c "qnx_$argv[4]_toolchain && package $argv[3]"
        end

      case "configure"
        switch $argv[2]
        case "alphabot"
          docker exec custom-environment-custom-env-1 fish -c "qnx_$argv[4]_toolchain && configure $argv[3]"
        end

end #Switch statement

end #if
cd $STARTDIR
end
