# =============================================================================
# Non-interactive section — sourced by all Bash contexts (login, VS Code, etc.)
# =============================================================================

# --- XDG Base Directories ----------------------------------------------------
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.config/local/share"
export XDG_CACHE_HOME="$HOME/.config/cache"

# --- Editor ------------------------------------------------------------------
export EDITOR=nvim
export VISUAL=nvim

# --- Claude / AI tools -------------------------------------------------------
export CLAUDE_PACKAGE_MANAGER=pnpm
export ANTHROPIC_MODEL=opusplan

# --- pnpm --------------------------------------------------------------------
export PNPM_HOME="$HOME/.config/local/share/pnpm"

# --- Volta -------------------------------------------------------------------
export VOLTA_HOME="$HOME/.volta"

# --- Homebrew (macOS only) ---------------------------------------------------
if [[ "$(uname -s)" == "Darwin" ]]; then
    if [[ -x /opt/homebrew/bin/brew ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
fi

# --- dotnet root (cheap & guarded) -------------------------------------------
if command -v dotnet &>/dev/null; then
    export DOTNET_ROOT="$(dirname "$(command -v dotnet)")"
fi

# --- PATH additions (deduplicated; listed lowest→highest priority) -----------
_prepend_path() { [[ -d "$1" && ":$PATH:" != *":$1:"* ]] && PATH="$1:$PATH"; }
_prepend_path "$HOME/.local/bin"
_prepend_path "$PNPM_HOME"
_prepend_path "$HOME/.dotnet/tools"
_prepend_path "$VOLTA_HOME/bin"
_prepend_path "$HOME/.cargo/bin"
_prepend_path "$HOME/.deno/bin"
unset -f _prepend_path
export PATH

# =============================================================================
# Interactive guard — non-interactive shells (e.g. VS Code task runner) stop here
# =============================================================================
[[ $- != *i* ]] && return

# --- Launch Fish for non-VS Code interactive sessions ------------------------
if [[ -z "$VSCODE_IPC_HOOK_CLI" && -t 1 ]]; then
    exec fish
fi

# --- GPG TTY -----------------------------------------------------------------
export GPG_TTY=$(tty)

# --- Aliases -----------------------------------------------------------------
alias ls='ls --color=auto'
alias grep='grep --color=auto'
