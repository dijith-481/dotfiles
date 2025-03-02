if status is-interactive
    # Commands to run in interactive sessions can go here
    # set -g fish_key_bindings fish_vi_key_bindings
end
if status is-login
    if test (tty) = /dev/tty1
        hyprland &>/dev/null
    end
end
set -g fish_greeting

starship init fish | source
zoxide init fish | source
fzf --fish | source
# ng completion script | source




thefuck --alias | source
# fastfetch
ff

function ll
    ls -al $argv
end
function la
    ls -a $argv
end


function vi
    nvim $argv
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

#go
set --export PATH $HOME/go/bin $PATH
vars
