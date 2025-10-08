# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

# --- GPG ---------------------------------------------------------------------
# https://superuser.com/questions/1628782/gpg-signing-failed-no-pinentry
# if command -q gpg
#     set -l _tty (tty)
#     if test -n "$_tty"
#         set -gx GPG_TTY $_tty
#     end
# end
