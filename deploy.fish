function deploy
  if [ "$argv[1]" = "71" ]
    scp $ALPHABOT_BUILD_DIR/alphabot-qnx-7_1_0_aarch64-assert/alphabot-4.14.0.0.0--prod-aarch64.apm "$argv[2]":/tmp
    ssh "$argv[2]" -t "apm install /tmp/alphabot-4.14.0.0.0--prod-aarch64.apm"
  end
  if [ "$argv[1]" = "70" ]
    scp $ALPHABOT_BUILD_DIR/alphabot-qnx-7_0_0_armv7-assert/alphabot-4.14.0.0.0--prod-armv7.apm $argv[2]:/tmp
    ssh $argv[2] -t "apm install /tmp/alphabot-4.14.0.0.0--prod-armv7.apm"
  end
end
