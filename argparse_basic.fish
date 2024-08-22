# Defined in /tmp/fish.tWb0Ee/argparse_basic.fish @ line 1
function argparse_basic
  #------------------------------------------ARGPARSE--------------------------------------------------#
  set -l options (fish_opt --short=h --long=help)
  set options $options (fish_opt --short=m --long=max --required-val)
  set options $options (fish_opt --short=t --long=token --multiple-vals --long-only)
  argparse $options -- $argv

  if set -q _flag_help
    echo "USAGE - set_alphabot_target apm_full_path jump_ip jump_port bot_ip bot_port"
    return 0
  end
  #----------------------------------------------------------------------------------------------------#
end
