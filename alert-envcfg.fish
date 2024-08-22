function alert-envcfg
  # echo "export JFROG_EMAIL="(read --prompt-str="Please enter your email: ") >> $HOME/.bashrc
  # echo "Please follow the link, and paste your token below - [https://alertinnovation.atlassian.net/wiki/spaces/SRE/pages/32835649]"
  # echo "export JFROG_TOKEN="(read --prompt-str="token: ") >> $HOME/.bashrc
  # echo "export HOSTNAME="(hostname) >> $HOME/.bashrc
  # echo "export USERID="(id -u) >> $HOME/.bashrc
  # echo "export JFROG_TOKEN="(id -g) >> $HOME/.bashrc
  # echo "export JFROG_USER='\${JFROG_EMAIL%@*}'" >> $HOME/.bashrc
  # echo "export ENVDIR="$PWD >> $HOME/.bashrc
  set -x FISHRC $HOME/.config/fish/config.fish

  if not set -q JFROG_EMAIL
    echo "set -x JFROG_EMAIL "(read --prompt-str="Please enter your email: ") >> $FISHRC
  end

  if not set -q JFROG_TOKEN
    echo "Please follow the link, and paste your token below - [https://alertinnovation.atlassian.net/wiki/spaces/SRE/pages/32835649]"
    echo "set -x JFROG_TOKEN "(read --prompt-str="token: ") >> $FISHRC
  end

  if not set -q HOSTNAME
    echo "set -x HOSTNAME (hostname)" >> $FISHRC
  end

  if not set -q USERID
    echo "set -x USERID (id -u)" >> $FISHRC 
  end

  if not set -q GROUPID
    echo "set -x GROUPID (id -g)" >> $FISHRC
  end

  if not set -q ENVDIR
    echo "set -x ENVDIR "$PWD >> $FISHRC
  end
  source $FISHRC 

  if not set -q JFROG_USER
    echo "set -x JFROG_USER "(string split -r -m1 '@' $JFROG_EMAIL )[1]  >> $FISHRC
  end
  source $FISHRC 
end
