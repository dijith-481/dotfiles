function hx --wraps hx
    if set -q ZELLIJ
        command helix $argv
    else
        set -x HX_ARGS "$argv"
        zellij --layout helix
    end
end
