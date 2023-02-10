# xdg
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$XDG_CONFIG_HOME/local/share"
set -gx XDG_CACHE_HOME "$XDG_CONFIG_HOME/cache"

# editor
set -gx EDITOR "nvim"
set -gx VISUAL "nvim"

# gpg
# https://superuser.com/questions/1628782/gpg-signing-failed-no-pinentry
set -x GPG_TTY (tty)
# gpg-agent --daemon > /dev/null 2>&1

# cargo
set -gx CARGO_TARGET_DIR "$HOME/.cargo-target"

# node
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

set -gx DOTNET_ROOT (dirname (which dotnet))

# Commands to run in interactive sessions can go here
if status is-interactive
  fish_vi_key_bindings
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/lowm4n/miniforge3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

