# --- Homebrew ----------------------------------------------------------------
if not set -q HOMEBREW_PREFIX
    if test -x /opt/homebrew/bin/brew
        eval (/opt/homebrew/bin/brew shellenv)
    end
end

# --- Others ------------------------------------------------------------------
set -gx VOLTA_HOME "$HOME/.volta"
set -l paths \
    ~/.cargo/bin \
    $VOLTA_HOME/bin \
    $HOME/.dotnet/tools \
    $HOME/.local/bin

# Add only existing dirs; persist; keep order without duplicates
for p in $paths
    if test -d $p
        fish_add_path --global --move --path $p
    end
end

# --- dotnet root (cheap & guarded) -------------------------------------------
if command -q dotnet
    set -gx DOTNET_ROOT (path dirname (command -s dotnet))
end
