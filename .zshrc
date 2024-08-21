# opam configuration
[[ ! -r /Users/derekmtaylor/.opam/opam-init/init.zsh ]] || source /Users/derekmtaylor/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

alias python=/usr/local/bin/python3
eval "$(zoxide init zsh)"
alias dump-to-brewfile="brew bundle dump"
alias restore-from-brewfile="brew bundle"

# Misc utility functions
alias get-weather="curl wttr.in"

# Clojure utility functions
alias new-pedestal-proj="lein new pedestal-service $1"
alias new-luminus-proj="lein new luminus $1"
alias install-clj-new="clojure -Ttools install com.github.seancorfield/clj-new '{:git/tag \"v1.2.404\"}' :as clj-new"
alias new-clojure-kit-proj="clojure -Tclj-new create :template io.github.kit-clj :name $1"
alias sync-org-to-gdrive="rsync -av ~/org/. ~/Google\ Drive/My\ Drive/org/."

# Start in tmux
# tmux attach

# Created by `pipx` on 2024-04-28 20:24:53
export PATH="$PATH:/Users/derekmtaylor/.local/bin"

export PATH="/Users/derekmtaylor/.cargo/bin:$PATH"
alias ls=eza
alias lynx="lynx -vikeys"
