#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export MOZ_ENABLE_WAYLAND=1
export XMODIFIERS=@im=fcitx
export QT_IM_MODULE=fcitx
