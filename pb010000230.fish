function pb010000230

  scp $HOME/alphabot/alphabot-4.12.0.0-smillburn-prod-armv7.apm smillburn@labjumpbox:$HOME/apms/alphabot-4.11.0.0-smillburn-prod-aarch64.apm
  ssh -t smillburn@labjumpbox "scp -P 6001 $HOME/apms/*prod*.apm root@b010000230:/opt;"
end
