# Defined in /tmp/fish.MSStJf/asplinter.fish @ line 2
function asplinter
  # USAGE - set_alphabot_target apm_full_path jump_ip jump_port bot_ip bot_port
  set_alphabot_target $PWD 10.166.0.10 2022 B04-SPL-INTR 6001
  sshpass -p "root" ssh -J  $JUMP_IP:$JUMP_PORT -p $TARGET_PORT root@$TARGET_IP
end
