# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

# --- Autostart Zellij ----------------------------------------------------
set -gx ZELLIJ_AUTO_ATTACH true

if set -q ZELLIJ
else
    zellij
end
