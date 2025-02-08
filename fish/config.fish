if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_key_bindings fish_vi_key_bindings
end
if status  is-login
    if test (tty) = /dev/tty1
        hyprland &> /dev/null
    end
end
set -g fish_greeting
set -Ux  PATH $PATH ~/go/bin
set -Ux  PATH $PATH ~/usr/local/go/bin
set -Ux  PATH $PATH ~/.local/share/gem/ruby/3.3.0/bin/

starship init fish | source
zoxide init fish | source
alias cd="z"



