# Defined in /tmp/fish.YFoPkG/push_and_install_to_target.fish @ line 2
function push_and_install_to_target
  argparse_basic 
  set_alphabot_target $argv
  pbot $argv
  ibot $argv
end
