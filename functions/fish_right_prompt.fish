# right prompt for agnoster theme
# shows vim mode status

function prompt_kubernetes -d 'kubernetes env highlighter'
  set kubernetes_env (kubectl config current-context)
  set -l right_segment_separator \uE0B2
  switch $kubernetes_env
    case '*'
      set_color -b black bryellow
      # echo "$right_segment_separator"
      # set_color -b bryellow black
      # echo -n " STAGING "
      set_color -b black brgreen
      echo "$right_segment_separator"
      set_color -b brgreen black
      echo " "
      kubectl config view | grep namespace: | sed -e 's/.*: \(.*\)/\1/'
  end
  set_color -b normal
end


function fish_right_prompt -d 'Prints right prompt'
  prompt_kubernetes
end