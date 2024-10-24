function run_alphabot_on_remote_target
  brc $argv[1] ". /etc/profile; cd /opt/alphabot/bin; ./alphabot -D lowbay"
end
