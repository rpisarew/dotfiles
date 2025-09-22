# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

# --- cached: starship init fish | source -------------------------------------
if not set -q __starship_inited
    set -g __starship_inited 1
    source ~/.config/fish/starship-init.fish
end
