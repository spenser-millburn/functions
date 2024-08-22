# Defined in /tmp/fish.eGKpfP/ibot.fish @ line 2
function ibot
  # USAGE - set_alphabot_target apm_full_path jump_ip jump_port bot_ip bot_port
  ssh -t -p $JUMP_PORT $JUMP_IP "ssh -t -p $TARGET_PORT $TARGET_IP 'apm install /opt/$USER-apms/$APM_FILE_NAME'"
end
