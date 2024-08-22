# Defined in /tmp/fish.x0EFrr/leonardo.fish @ line 2
function leonardo

  # USAGE - set_alphabot_target apm_full_path jump_ip jump_port bot_ip bot_port
  set_alphabot_target $PWD 10.166.0.10 2022 B04-LEO-NARD 6001

  # set -x LD_CMD "export LD_LIBRARY_PATH='/opt/alphabot/lib:/lib/alphabot_boost:/lib:/usr/lib:/lib/dll:/lib/dll/pci:/proc/boot'"

   ssh -t -J  $JUMP_IP:$JUMP_PORT -p $TARGET_PORT root@$TARGET_IP 'cd /opt/alphabot/bin;/bin/sh;'
end
