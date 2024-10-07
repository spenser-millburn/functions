function gcm
    set diff (git diff)
    set stat (git status)
    set message (g "diff : $diff , status: $stat. please write a 5 word commit message")
    set message_type (g "diff : $diff , status: $stat. please respond in one word if this is an ADD, REMOVE, UPDATE or FIX")

    if not git config --get user.email > /dev/null
        git config --global user.email "you@example.com"
        git config --global user.name "Your Name"
    end
    git commit -am "[$message_type] $message"
end
