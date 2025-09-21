# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

# --- Sentinel so we init exactly once ----------------------------------------
set -g __zoxide_inited 0

# Initialize once, right before the first prompt is drawn.
function __zoxide_prompt_init --on-event fish_prompt
    if test $__zoxide_inited -eq 0
        # If you don't want cd hooks, change --hook prompt -> --hook none
        zoxide init fish --cmd z --hook prompt | source
        set -g __zoxide_inited 1
    end
    # Remove this initializer; it has done its job.
    functions -e __zoxide_prompt_init
end
