# Defined in /tmp/fish.mp8ceS/copy_pubkey_to_bot.fish @ line 2
function copy_pubkey_to_bot
    # USAGE - copy_pubkey_to_bot jump_ip jump_port bot_ip bot_port
  set_alphabot_target $PWD $argv
  cat ~/.ssh/id_ed25519.pub | ssh -J  $JUMP_IP:$JUMP_PORT -p $TARGET_PORT root@$TARGET_IP 'cat >> ~/.ssh/authorized_keys'
end
