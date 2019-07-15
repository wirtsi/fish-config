#enable vi mode
set fish_key_bindings fish_vi_key_bindings

# Removed color themes from fish and moved them to iterm2
# https://github.com/whatyouhide/gotham-contrib

#https://github.com/ryanoasis/nerd-fonts
set -x theme_nerd_fonts yes
set -x theme_display_date no

#vim
set -U EDITOR nvim
set -x KUBE_EDITOR nvim

#visual mode
set -x VISUAL nvim

#longer pwd
set -x fish_prompt_pwd_dir_length 5

#pyenv
status --is-interactive; and source (pyenv init -|psub)

#conda
source ~/.pyenv/versions/miniconda3-4.3.30/etc/fish/conf.d/conda.fish

alias vi="/usr/local/bin/nvim"
alias vim="/usr/local/bin/nvim"
alias k="/usr/local/bin/kubectl"
alias l="ls -la"

set -x PATH \
    ~/.config/yarn/global/node_modules/.bin \
    $PATH

set -x GOPATH ~/go
set -x GOROOT /usr/local/opt/go/libexec

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openssl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/node/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths "/Users/fkrause/.local/bin" $fish_user_paths
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# source the proxy settings
source proxy.fish

#Java
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

# Spark
#set -x SPARK_HOME /usr/local/Cellar/apache-spark/2.3.1/libexec
set -x PYSPARK_DRIVER_PYTHON jupyter
set -x PYSPARK_DRIVER_PYTHON_OPTS "notebook"
