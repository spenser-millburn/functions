# Defined in /tmp/fish.wZ3AVE/set_alphabot_target.fish @ line 8
function set_alphabot_target
  set -g APM_PATH $argv[1]
  set -g APM_FILE_NAME (basename $APM_PATH)
  set -g JUMP_IP $argv[2]
  set -g JUMP_PORT $argv[3]
  set -g TARGET_IP $argv[4]
  set -g TARGET_PORT $argv[5]
end
