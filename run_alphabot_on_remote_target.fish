function run_alphabot_on_remote_target
  rc $argv[1] ". /etc/profile; cd /opt/alphabot/bin; ./alphabot -D lowbay"
end
