#enable vi mode
set fish_key_bindings fish_vi_key_bindings
#Java
#set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

#load this so the prompt gets the path (which is needed for displaying the kubernetes env)
#source ~/.config/fish/functions/gcloud-fish.fish

#rbenv
#set -x PATH ~/.rbenv/shims $PATH
#rbenv rehash

#vim
set -U EDITOR nvim
#set -x KUBE_EDITOR nvim

#visual mode
set -x VISUAL nvim


alias vi="/usr/local/bin/nvim"
alias vim="/usr/local/bin/nvim"
alias k="kubectl"

#set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -x fish_user_paths "/usr/local/opt/python/libexec/bin" $fish_user_paths
