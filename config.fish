#enable vi mode
set fish_key_bindings fish_vi_key_bindings

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
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
# alias ibrew='arch -x86_64 /usr/local/bin/brew'
alias lg="lazygit"
alias gd="git difftool --no-symlinks --dir-diff"
alias d="kitty +kitten diff"
alias cat='bat'
alias ssh="kitty +kitten ssh"
alias nn="NNN_OPENER=~/.config/nnn/plugins/nuke nnn -c"

set -x PATH \
    ~/.config/yarn/global/node_modules/.bin \
    $PATH

set -x GOPATH ~/go

set -g fish_user_paths /opt/homebrew/bin $fish_user_paths
set -g fish_user_paths "$GOPATH/bin" $fish_user_paths
# set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_user_paths /opt/homebrew/opt/gettext/bin $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/openssl@1.1/bin" $fish_user_paths
set -g fish_user_paths /opt/homebrew/opt/icu4c/bin $fish_user_paths
set -g fish_user_paths /opt/homebrew/opt/icu4c/sbin $fish_user_paths
set -g fish_user_paths /opt/homebrew/opt/node@16/bin $fish_user_paths
set -g fish_user_paths /opt/homebrew/opt/sqlite/bin $fish_user_paths
set -g fish_user_paths "/opt/homebrew/opt/openjdk@16/bin" $fish_user_paths
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
status is-interactive && eval /Users/floriankrause/miniforge3/bin/conda "shell.fish" hook $argv | source
# <<< conda initialize <<<

# source the proxy settings
# source ~/.config/fish/proxy.fish

#Java
set -x JAVA_HOME (/usr/libexec/java_home -v 16)

# Try connecting to existing nvim
set -x NVIM_LISTEN_ADDRESS /tmp/nvimsocket
# if test -n $NVIM_LISTEN_ADDRESS
# alias nvim="nvr -s --remote"
# end
status is-interactive && conda activate python38

set -x FZF_DEFAULT_COMMAND 'fd --type f'
set -x FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND

# lsd nerd style
set -x LS_COLORS 'no=00:rs=0:fi=00:di=01;34:ln=36:mh=04;36:pi=04;01;36:so=04;33:do=04;01;36:bd=01;33:cd=33:or=31:mi=01;37;41:ex=01;36:su=01;04;37:sg=01;04;37:ca=01;37:tw=01;37;44:ow=01;04;34:st=04;37;44:*.7z=01;32:*.ace=01;32:*.alz=01;32:*.arc=01;32:*.arj=01;32:*.bz=01;32:*.bz2=01;32:*.cab=01;32:*.cpio=01;32:*.deb=01;32:*.dz=01;32:*.ear=01;32:*.gz=01;32:*.jar=01;32:*.lha=01;32:*.lrz=01;32:*.lz=01;32:*.lz4=01;32:*.lzh=01;32:*.lzma=01;32:*.lzo=01;32:*.rar=01;32:*.rpm=01;32:*.rz=01;32:*.sar=01;32:*.t7z=01;32:*.tar=01;32:*.taz=01;32:*.tbz=01;32:*.tbz2=01;32:*.tgz=01;32:*.tlz=01;32:*.txz=01;32:*.tz=01;32:*.tzo=01;32:*.tzst=01;32:*.war=01;32:*.xz=01;32:*.z=01;32:*.Z=01;32:*.zip=01;32:*.zoo=01;32:*.zst=01;32:*.aac=32:*.au=32:*.flac=32:*.m4a=32:*.mid=32:*.midi=32:*.mka=32:*.mp3=32:*.mpa=32:*.mpeg=32:*.mpg=32:*.ogg=32:*.opus=32:*.ra=32:*.wav=32:*.3des=01;35:*.aes=01;35:*.gpg=01;35:*.pgp=01;35:*.doc=32:*.docx=32:*.dot=32:*.odg=32:*.odp=32:*.ods=32:*.odt=32:*.otg=32:*.otp=32:*.ots=32:*.ott=32:*.pdf=32:*.ppt=32:*.pptx=32:*.xls=32:*.xlsx=32:*.app=01;36:*.bat=01;36:*.btm=01;36:*.cmd=01;36:*.com=01;36:*.exe=01;36:*.reg=01;36:*~=02;37:*.bak=02;37:*.BAK=02;37:*.log=02;37:*.log=02;37:*.old=02;37:*.OLD=02;37:*.orig=02;37:*.ORIG=02;37:*.swo=02;37:*.swp=02;37:*.bmp=32:*.cgm=32:*.dl=32:*.dvi=32:*.emf=32:*.eps=32:*.gif=32:*.jpeg=32:*.jpg=32:*.JPG=32:*.mng=32:*.pbm=32:*.pcx=32:*.pgm=32:*.png=32:*.PNG=32:*.ppm=32:*.pps=32:*.ppsx=32:*.ps=32:*.svg=32:*.svgz=32:*.tga=32:*.tif=32:*.tiff=32:*.xbm=32:*.xcf=32:*.xpm=32:*.xwd=32:*.xwd=32:*.yuv=32:*.anx=32:*.asf=32:*.avi=32:*.axv=32:*.flc=32:*.fli=32:*.flv=32:*.gl=32:*.m2v=32:*.m4v=32:*.mkv=32:*.mov=32:*.MOV=32:*.mp4=32:*.mpeg=32:*.mpg=32:*.nuv=32:*.ogm=32:*.ogv=32:*.ogx=32:*.qt=32:*.rm=32:*.rmvb=32:*.swf=32:*.vob=32:*.webm=32:*.wmv=32:'
