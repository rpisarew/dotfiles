function s
    kitty --session (exa -1 ~/.config/kitty/*.session | fzf) &
end
