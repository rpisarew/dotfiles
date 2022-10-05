# Homebrew
if not set -q HOMEBREW_PREFIX
  if test -x /opt/homebrew/bin/brew
      eval (/opt/homebrew/bin/brew shellenv)
  end
end

set -gx VOLTA_HOME "$HOME/.volta"

set -l paths \
    ~/.cargo/bin \
    $VOLTA_HOME/bin \
    $HOME/.dotnet/tools \
    $HOME/.local/bin

fish_add_path --global --move --path $paths

# cargo
#set -gx CARGO_TARGET_DIR "$HOME/.cargo-target"

# set -gx DOTNET_ROOT /usr/local/share/dotnet
if command -q dotnet
  set -gx DOTNET_ROOT (path dirname (command -s dotnet))
end
