

# opam configuration
[[ ! -r /Users/derekmtaylor/.opam/opam-init/init.zsh ]] || source /Users/derekmtaylor/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

alias python=/usr/local/bin/python3
eval "$(zoxide init zsh)"
alias dump-to-brewfile="brew bundle dump"
alias restore-from-brewfile="brew bundle"
alias get-weather="curl wttr.in"
