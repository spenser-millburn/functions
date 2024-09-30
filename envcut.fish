function envcut
echo "set -x $argv[1] $PWD">> ~/.config/fish/config.fish
fish
end
