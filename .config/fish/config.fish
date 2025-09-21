# xdg
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$XDG_CONFIG_HOME/local/share"
set -gx XDG_CACHE_HOME "$XDG_CONFIG_HOME/cache"

# editor
set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx ZELLIJ_AUTO_ATTACH true

# Commands to run in interactive sessions can go here
if status is-interactive
    fish_default_key_bindings

    # Fast, minimal greeting
    set -U fish_greeting

    # gpg
    # https://superuser.com/questions/1628782/gpg-signing-failed-no-pinentry
    set -x GPG_TTY (tty)
    # gpg-agent --daemon > /dev/null 2>&1

    function __atuin_lazy_init --on-event fish_prompt
        functions -e __atuin_lazy_init
        source (atuin init fish | psub)
    end

    # autostart zellij
    if set -q ZELLIJ
    else
        zellij
    end
end
