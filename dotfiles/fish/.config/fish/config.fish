# --- XDG ---------------------------------------------------------------------
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$XDG_CONFIG_HOME/local/share"
set -gx XDG_CACHE_HOME "$XDG_CONFIG_HOME/cache"

# --- Editor ------------------------------------------------------------------
set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx CLAUDE_PACKAGE_MANAGER pnpm

# --- pnpm ---------------------------------------------------------------------
set -gx PNPM_HOME "$HOME/.config/local/share/pnpm"
fish_add_path $PNPM_HOME

# GPG signing — required for commit signing in terminal and over SSH
if status is-interactive
    set -gx GPG_TTY (tty)
    gpg-connect-agent updatestartuptty /bye >/dev/null 2>&1
end

set -gx ANTHROPIC_MODEL opusplan

# --- Deno --------------------------------------------------------------------
fish_add_path $HOME/.deno/bin
