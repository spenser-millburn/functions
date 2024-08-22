# Defined in /tmp/fish.POfrDy/fish_default_mode_prompt.fish @ line 2
function fish_default_mode_prompt --description 'Display the default mode for the prompt'
    # Do nothing if not in vi mode
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        or test "$fish_key_bindings" = "fish_hybrid_key_bindings"
        switch $fish_bind_mode
            case default
                set_color --bold --background "#282c34" "#abb2bf"
                echo '[N]'
            case insert
                set_color --bold --background "#abb2bf" "#282c34"
                echo '[I]'
            case replace_one
                set_color --bold --background green black
                echo '[R]'
            case replace
                set_color --bold --background cyan white
                echo '[R]'
            case visual
                set_color --bold --background  "#282c34" "#abb2bf"

                echo '[V]'
        end
        set_color normal
        echo -n ' '
    end
end
