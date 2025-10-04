# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

# --- Atuin ---------------------------------------------------------------
function __atuin_lazy_init --on-event fish_prompt
    functions -e __atuin_lazy_init
    source (atuin init fish | psub)
end