#! bash oh-my-bash.module

source "$OSH/themes/powerline/powerline.base.sh"

PROMPT_CHAR=${POWERLINE_PROMPT_CHAR:=""}
POWERLINE_LEFT_SEPARATOR=${POWERLINE_LEFT_SEPARATOR:=""}

USER_INFO_SSH_CHAR=${POWERLINE_USER_INFO_SSH_CHAR:=" "}
USER_INFO_THEME_PROMPT_COLOR="#8fbcbb"
USER_INFO_THEME_PROMPT_SECONDARY_COLOR="-"
USER_INFO_THEME_PROMPT_COLOR_SUDO="#bf616a"

PYTHON_VENV_CHAR=${POWERLINE_PYTHON_VENV_CHAR:="❲p❳ "}
CONDA_PYTHON_VENV_CHAR=${POWERLINE_CONDA_PYTHON_VENV_CHAR:="❲c❳ "}
PYTHON_VENV_THEME_PROMPT_COLOR="#88c0d0"

SCM_NONE_CHAR=""
SCM_GIT_CHAR=${POWERLINE_SCM_GIT_CHAR:=" "}
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_DIRTY=""
SCM_THEME_PROMPT_CLEAN_COLOR="#88c0d0"
SCM_THEME_PROMPT_DIRTY_COLOR="#bf616a"
SCM_THEME_PROMPT_STAGED_COLOR="#81a1c1"
SCM_THEME_PROMPT_UNSTAGED_COLOR="#d08770"
SCM_THEME_PROMPT_COLOR="${SCM_THEME_PROMPT_CLEAN_COLOR}"

RVM_THEME_PROMPT_PREFIX=""
RVM_THEME_PROMPT_SUFFIX=""
RBENV_THEME_PROMPT_PREFIX=""
RBENV_THEME_PROMPT_SUFFIX=""
RUBY_THEME_PROMPT_COLOR="#b48ead"
RUBY_CHAR=${POWERLINE_RUBY_CHAR:="❲r❳ "}

CWD_THEME_PROMPT_COLOR="#3b4252"
LAST_STATUS_THEME_PROMPT_COLOR="#bf616a"
CLOCK_THEME_PROMPT_COLOR="#4c566a"
BATTERY_AC_CHAR=${BATTERY_AC_CHAR:="⚡"}
BATTERY_STATUS_THEME_PROMPT_GOOD_COLOR="#88c0d0"
BATTERY_STATUS_THEME_PROMPT_LOW_COLOR="#ebcb8b"
BATTERY_STATUS_THEME_PROMPT_CRITICAL_COLOR="#bf616a"
THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:="%H:%M:%S"}
IN_VIM_THEME_PROMPT_COLOR="#81a1c1"
IN_VIM_THEME_PROMPT_TEXT="vim"

POWERLINE_PROMPT=${POWERLINE_PROMPT:="user_info scm python_venv ruby cwd"}

function __powerline_left_segment {
  local OLD_IFS="${IFS}"; IFS="|"
  local params=( $1 )
  IFS="${OLD_IFS}"
  local separator_char="${POWERLINE_LEFT_SEPARATOR}"
  local separator=""
  local text_color="#2e3440"
  if [[ "${params[1]}" == "#2e3440" || "${params[1]}" == "#3b4252" || "${params[1]}" == "#434c5e" || "${params[1]}" == "#4c566a" ]]; then
    text_color="#eceff4"
  fi

  if [[ "${SEGMENTS_AT_LEFT}" -gt 0 ]]; then
    separator="$(set_color ${LAST_SEGMENT_COLOR} ${params[1]})${separator_char}${_omb_prompt_normal}"
  fi

  LEFT_PROMPT+="${separator}$(set_color ${text_color} ${params[1]}) ${params[0]} ${_omb_prompt_normal}"
  LAST_SEGMENT_COLOR=${params[1]}
  (( SEGMENTS_AT_LEFT += 1 ))
}

function _omb_theme_PROMPT_COMMAND { __powerline_prompt_command "$@"; }
_omb_util_add_prompt_command _omb_theme_PROMPT_COMMAND
