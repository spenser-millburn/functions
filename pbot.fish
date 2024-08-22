# Defined in /tmp/fish.js3Z7x/pbot.fish @ line 2
function pbot
  alphabot

  #Create user directory in opt if its not already created
  sshpass -p "Boston2020!@#" ssh -t -p $JUMP_PORT $JUMP_IP 'mkdir $HOME/$USER-apms'
  sshpass -p "Boston2020!@#" ssh -t -p $JUMP_PORT $JUMP_IP "ssh -t -p $TARGET_PORT $TARGET_IP 'mkdir /opt/$USER-apms'"
  
  #Transfer APM to jumpbox 
  scp -P $JUMP_PORT $APM_PATH $JUMP_IP:"$HOME/$USER-apms/"

  #Transfer APM from jumpbox to target
  sshpass -p "Boston2020!@#" ssh -t -p $JUMP_PORT $JUMP_IP "scp -P $TARGET_PORT $HOME/$USER-apms/$APM_FILE_NAME $TARGET_IP:/opt/$USER-apms"
end
