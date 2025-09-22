.PHONY: stow-base stow-dev stow-desktop unstow switch fmt check

stow-base:      ; bin/stow-profile base
stow-mac:       ; bin/stow-profile mac
stow-desktop:   ; bin/stow-profile desktop
unstow:         ; cd dotfiles && stow -D $(PKG)
switch:         ; bin/nix-switch
fmt:            ; nix fmt
check:          ; statix check && deadnix
