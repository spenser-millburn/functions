function mcfindcp
mc find $AB_LOG_BUCKET --name "*$argv[1]*" --exec "mc cp {} ."
mc find $AB_PLOT_BUCKET --name "*$argv[1]*" --exec "mc cp {} ."
mc find $AB_SUMMARY_BUCKET --name "*$argv[1]*" --exec "mc cp {} ."
mc find $AB_VIDEO_BUCKET --name "*$argv[1]*" --exec "mc cp {} ."
end
