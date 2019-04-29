function fish_user_key_bindings
  fzf_key_bindings

  # We overwrite this because we only want files on ctrl-t
  function fzf-file-widget -d "List files"
    set -l commandline (__fzf_parse_commandline)
    set -l dir $commandline[1]
    set -l fzf_query $commandline[2]

    # "-path \$dir'*/\\.*'" matches hidden files/folders inside $dir but not
    # $dir itself, even if hidden.
    set -q FZF_CTRL_T_COMMAND; or set -l FZF_CTRL_T_COMMAND "
    command find -L \$dir -mindepth 1 \\( -path \$dir'*/\\.*' -o -fstype 'sysfs' -o -fstype 'devfs' -o -fstype 'devtmpfs' \\) -prune \
    -o -type f -print \
    -o -type l -print 2> /dev/null | sed 's@^\./@@'"

    set -q FZF_TMUX_HEIGHT; or set FZF_TMUX_HEIGHT 40%
    begin
      set -lx FZF_DEFAULT_OPTS "--height $FZF_TMUX_HEIGHT --reverse $FZF_DEFAULT_OPTS $FZF_CTRL_T_OPTS"
      eval "$FZF_CTRL_T_COMMAND | "(__fzfcmd)' -m --query "'$fzf_query'"' | while read -l r; set result $result $r; end
    end
    if [ -z "$result" ]
      commandline -f repaint
      return
    else
      # Remove last token from commandline.
      commandline -t ""
    end
    for i in $result
      commandline -it -- (string escape $i)
      commandline -it -- ' '
    end
    commandline -f repaint
  end

  # Ctrl+F goes to git root
  function git-root -d "Go to git root"
    set -q FZF_CTRL_G_COMMAND; or set -l FZF_CTRL_G_COMMAND "set root (git rev-parse --show-toplevel 2> /dev/null)"
    begin
      eval "$FZF_CTRL_G_COMMAND"
    end
    if [ -n "$root" ]
      cd $root
      commandline -f repaint
    else
      commandline -t ""
    end
  end
  # Bind to Ctrl+F
  bind \cf git-root
  bind -M insert \cf git-root


  # Bind to ctrl+g
  bind \cg fzf-cd-widget
  bind -M insert \cg fzf-cd-widget
end
