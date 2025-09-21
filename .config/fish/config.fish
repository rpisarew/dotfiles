# --- XDG ---------------------------------------------------------------------
set -gx XDG_CONFIG_HOME "$HOME/.config"
set -gx XDG_DATA_HOME "$XDG_CONFIG_HOME/local/share"
set -gx XDG_CACHE_HOME "$XDG_CONFIG_HOME/cache"

# --- Editor ------------------------------------------------------------------
set -gx EDITOR nvim
set -gx VISUAL nvim
