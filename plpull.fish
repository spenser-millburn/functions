function plpull
    for file in (find . | ag "$ALPHABOT_TEXT_LOG_REGEX")
        mcfindcp $AB_LOG_BUCKET (echo (basename $file) | cut -d . -f 1) 
        mcfindcp $AB_PLOT_BUCKET (echo (basename $file) | cut -d . -f 1)
        mcfindcp $AB_SUMMARY_BUCKET (echo (basename $file) | cut -d . -f 1)
    end
end
