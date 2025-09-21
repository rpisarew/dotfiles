# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

#alias ls="exa"
alias lg="lazygit"
alias ll="exa -l --icons"
alias lla="exa -la --icons"
alias cat="bat"
alias icat="kitty +kitten icat"
alias grep="rg"
alias top="btm"

alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias nv="/Applications/neovide.app/Contents/MacOS/neovide"

alias r="ranger"

alias dco="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcl="docker-compose logs"

alias e="emacsclient -c -a emacs"

# Zellij
alias zz="zellij"
alias zza="zz attach (zz list-sessions | fzf)"

function zr
  zellij run -- $argv
end

function zrf
  zellij run -f -- $argv
end

alias docker="podman"
