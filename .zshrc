# Created by newuser for 5.9
setopt PROMPT_SUBST

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%b '

alias ls='ls --color=auto'
alias grep='grep --color=auto'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=green,bold" 

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

PROMPT='$(xrdb_fg color10)%n $(xrdb_fg color9)%1~%{$(tput sgr0)%} ${vcs_info_msg_0_}%  '

