# Defined in /home/smillburn/.config/fish/functions/pdonatello.fish @ line 2
function pdonatello

  scp $HOME/alphabot/alphabot-4.11.0.0-smillburn-prod-aarch64.apm smillburn@labjumpbox:$HOME/apms/alphabot-4.11.0.0-smillburn-prod-aarch64.apm
  ssh -t smillburn@labjumpbox "scp -P 6001 $HOME/apms/*prod*.apm root@BD0NATELL0:/opt;"
end
