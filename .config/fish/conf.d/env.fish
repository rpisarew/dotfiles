# editor
set -x EDITOR nvim

# homebrew
/opt/homebrew/bin/brew shellenv | source

# cargo
bass source $HOME/.cargo/env

# zoxide
zoxide init fish | source

# node
# nvm use lts > /dev/null

# starship
starship init fish | source

