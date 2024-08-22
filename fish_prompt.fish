function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end
    if not set -q ENV_ACTIVE
      echo -n (set_color "#abb2bf")'❯'(set_color "#abb2bf")'❯'(set_color "#abb2bf")'❯ '
    else
      echo -n (set_color "#abb2bf")' ⟑ ❯'(set_color "#abb2bf")'❯'(set_color "#abb2bf")'❯ '
    end
    # set_color normal
end
