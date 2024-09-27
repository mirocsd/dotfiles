#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\t \w > '
#export PS1="\[$(tput bold)\]\[$(tput setaf 6)\]\t \[$(tput setaf 2)\][\[$(tput setaf 3)\]\u\[$(tput setaf 1)\]@\[$(tput setaf 3)\]\h \[$(tput setaf 6)\]\W\[$(tput setaf 2)\]]\[$(tput setaf 4)\]\\$ \[$(tput sgr0)\]"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/
export PATH="/tools/Xilinx/Vivado/2023.1/bin:$PATH"
export PATH=$PATH:~/Apps/stlink/build/Release/bin

export PATH=$PATH:/home/miro/matlab/bin
# pywal     
#(cat ~/.cache/wal/sequences &)     
#source ~/.cache/wal/colors-tty.sh

export PATH=$PATH:/home/miro/.spicetify
