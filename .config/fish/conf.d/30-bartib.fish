# --- Only in interactive shells ----------------------------------------------
status is-interactive; or exit

set -x BARTIB_FILE ~/.activities.bartib
alias brt="bartib report --today"
alias bry="bartib report --yesterday"
alias bl="bartib last"
alias b="bartib"
alias bsd="bartib start -d 'Daily' -p 'Plansysteme'"
