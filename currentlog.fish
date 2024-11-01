function currentlog
ls | ag $ALPHABOT_TEXT_LOG_REGEX | cut -d "." -f1
end
