#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
    _prompt_steeef_colors=(
      "%F{magenta}"
      "%F{red}"
      "%F{red}"
      "%F{magenta}"
      "%F{yellow}"
      "%F{green}"
    )
  PROMPT="
${_prompt_steeef_colors[3]}%n%f at ${_prompt_steeef_colors[6]}(Docker ${_prompt_steeef_colors[6]}Container) ${_prompt_steeef_colors[2]}#%m%f in ${_prompt_steeef_colors[5]}%~%f "'${vcs_info_msg_0_}'"
"'$python_info[virtualenv]'"$ "
  RPROMPT=''