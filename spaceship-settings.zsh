SPACESHIP_PROMPT_ORDER=(
  pre_processor
  dir           # Current directory section
  host          # Hostname section
  line_sep      # Line break
  user          # Username section
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_RPROMPT_ORDER=(
  rprompt_prefix
  exec_time     # Execution time
  git           # Git section (git_branch + git_status)
  rprompt_suffix
)

collapse_prompt() {
  if [[ "$(pwd)" == "$HOME" ]] && [[ $SSH_CLIENT == '' ]]; then
    return $(true)
  else
    return $(false)
  fi
}

spaceship_rprompt_prefix() {
  if ! collapse_prompt; then
    echo -n '%{'$'\e[1A''%}'
  fi
}

spaceship_rprompt_suffix() {
  if ! collapse_prompt; then
    echo -n '%{'$'\e[1B''%}'
  fi
}

spaceship_pre_processor() {
  if collapse_prompt; then
    SPACESHIP_PROMPT_SEPARATE_LINE=false
    SPACESHIP_DIR_SHOW=false
  else
    SPACESHIP_PROMPT_SEPARATE_LINE=true
    SPACESHIP_DIR_SHOW=true
  fi
}

SPACESHIP_NODE_SHOW=false
SPACESHIP_BATTERY_SHOW=true
SPACESHIP_USER_PREFIX=''
SPACESHIP_PROMPT_ADD_NEWLINE=true
