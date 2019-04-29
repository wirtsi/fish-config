#enable vi mode
set fish_key_bindings fish_vi_key_bindings

#Tomorrow Night
if status --is-interactive
    eval sh $HOME/.config/base16-shell/scripts/base16-tomorrow-night.sh
end

#https://github.com/ryanoasis/nerd-fonts
set -x theme_nerd_fonts yes
set -x theme_color_scheme Tomorrow-Night
set -x theme_display_date no
#brighter dirs
set -gx LSCOLORS gxfxcxdxbxegedabagacad
set -gx CLICOLOR 1
set -gx TERM xterm-256color
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

#set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $PATH
set -x PATH /usr/local/opt/gettext/bin /usr/local/opt/sqlite/bin \
    /usr/local/opt/openssl/bin \
    ~/.composer/vendor/bin \
    ~/.config/yarn/global/node_modules/.bin \
    $PATH

set -x GOPATH ~/go
set -x GOROOT /usr/local/opt/go/libexec

set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/postgresql/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/node@10/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/scala@2.11/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/bin" $fish_user_paths

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

#Java
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

# Spark
set -x SPARK_HOME /usr/local/Cellar/apache-spark/2.3.1/libexec
set -x PYSPARK_DRIVER_PYTHON jupyter
set -x PYSPARK_DRIVER_PYTHON_OPTS "notebook"
