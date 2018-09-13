#enable vi mode
set fish_key_bindings fish_vi_key_bindings
#Java
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

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


# set -x FZF_DEFAULT_COMMAND 'rg --files --no-ignore --hidden --follow --glob "!.git/*" --glob "!node_modules/*" --glob "!coverage/*" --glob "!reports/*" --glob "!build/*"'

set -x FZF_DEFAULT_COMMAND 'fd --type file --color=always --follow --hidden --exclude .git'

set -x GOPATH ~/go
set -x GOROOT /usr/local/opt/go/libexec

set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/postgresql@9.4/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/php@7.1/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/php@7.1/sbin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/node@8/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/scala@2.11/bin" $fish_user_paths

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

