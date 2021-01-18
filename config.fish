#enable vi mode
set fish_key_bindings fish_vi_key_bindings

#https://github.com/ryanoasis/nerd-fonts
set -x theme_nerd_fonts yes
set -x theme_display_date no

#vim
set -x EDITOR nvim
set -x KUBE_EDITOR nvim

#visual mode
set -x VISUAL nvim

#longer pwd
set -x fish_prompt_pwd_dir_length 5


alias vi=nvim
alias vim=nvim
alias k="/usr/local/bin/kubectl"
alias l="ls -la"
alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias lg="lazygit"
alias gd="git difftool --no-symlinks --dir-diff"
alias d="kitty +kitten diff"
alias ssh="kitty kitten ssh"

set -x PATH \
    ~/.config/yarn/global/node_modules/.bin \
    $PATH

set -x GOPATH ~/go

set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/gettext/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/openssl@1.1/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/icu4c/sbin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/node/bin" $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/sqlite/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
status is-interactive && eval /Users/fkrause/miniforge3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# source the proxy settings
# source ~/.config/fish/proxy.fish

#Java
set -x JAVA_HOME (/usr/libexec/java_home -v 11)

# Try connecting to existing nvim
set -x NVIM_LISTEN_ADDRESS /tmp/nvimsocket
# if test -n $NVIM_LISTEN_ADDRESS
    # alias nvim="nvr -s --remote"
# end
# conda activate python38
