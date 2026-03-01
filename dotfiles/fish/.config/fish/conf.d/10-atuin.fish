# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

# --- Atuin ---------------------------------------------------------------
function __atuin_lazy_init --on-event fish_prompt
    functions -e __atuin_lazy_init

    # fix for fish version >= 4.0
    source (atuin init fish | sed 's/-k up/ up/' | psub)
    # source (atuin init fish | psub)
end
