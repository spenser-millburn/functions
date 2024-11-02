function greplogs
ag -w "$argv" (find . | ag $ALPHABOT_TEXT_LOG_REGEX)
end
