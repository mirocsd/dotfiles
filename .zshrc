# Created by newuser for 5.9
setopt PROMPT_SUBST

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '

alias ls='ls --color=auto'
alias grep='grep --color=auto'

xrdb_hex() {
  xrdb -query | awk -v c="$1" '$1=="*."c":" {print $2; exit}'
}

xrdb_fg() {
  local hex="$(xrdb_hex "$1")"
  [[ -z "$hex" ]] && return 1
  print -n -- "%{\e[38;2;$((16#${hex[2,3]}));$((16#${hex[4,5]}));$((16#${hex[6,7]}))m%}"
}

xrdb_bg() {
  local hex="$(xrdb_hex "$1")"
  [[ -z "$hex" ]] && return 1
  print -n -- "%{\e[48;2;$((16#${hex[2,3]}));$((16#${hex[4,5]}));$((16#${hex[6,7]}))m%}"
}

PROMPT='$(xrdb_fg color13)%n $(xrdb_fg color9)%1~%{$(tput sgr0)%} ${vcs_info_msg_0_}%  '

#export PS1="$(xrdb_color color12)%n\
#$(xrdb_color color13)@\
#$(xrdb_color color11)%m \
#$(xrdb_color color9)%1~ $(tput sgr0)$ "

#xrdb_color() {
#    local name="$1"
#    local hex
#    hex=$(xrdb -query | awk -v c="$name" '$1=="*."c":" {print $2}')
#    printf '\033[38;2;%d;%d;%dm' \
#        $((0x${hex:1:2})) \
#        $((0x${hex:3:2})) \
#        $((0x${hex:5:2}))
#}

#xrdb_bg() {
#  local name="$1"
#  local hex
#  hex=$(xrdb -query | awk -v c="$name" '$1=="*."c":" {print $2}')
#  printf '\033[48;2;%d;%d;%dm' \
#    $((0x${hex:1:2})) \
#    $((0x${hex:3:2})) \
#    $((0x${hex:5:2}))
#}
