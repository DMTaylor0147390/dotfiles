export PATH=$PATH:~/proj/rh.customer/scripts
export ERL_AFLAGS='-kernel shell_history enabled'
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export PATH="/usr/local/opt/node@14/bin:$PATH"
function withenv {
    set -o allexport;
      source .env;
        set +o allexport;
          "${@:1}";
        }

. /usr/local/opt/asdf/libexec/asdf.sh

eval "$(zoxide init zsh)"

  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
