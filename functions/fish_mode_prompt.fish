# right prompt for agnoster theme
# shows vim mode status
set -l segment_separator \uE0B2

function prompt_vi_mode -d 'vi mode status indicator'
  switch $fish_bind_mode
      case default
        set_color -b brgreen black
        echo " N "
        set_color -b black brgreen
        echo "$segment_separator"
      case insert
        set_color -b brblue black
        echo " I "
        set_color -b black brblue
        echo "$segment_separator"
      case visual
        set_color -b brred black
        echo " V "
        set_color -b black brred
        echo "$segment_separator"
    end
end

function fish_mode_prompt -d 'Prints mode prompt'
  if test "$fish_key_bindings" = "fish_vi_key_bindings"
    prompt_vi_mode
    set_color normal
  end
end
