[[ $- != *i* ]] && return
export PS1=" \[\e[41;00m\] \w \[\e[0m\]   "

alias ed="vim"
alias p="cd ~/.projects"
alias dc="cd ~/.config"
alias ci3="vim ~/.config/i3/config"
alias dv="cd ~/.config/vimrc"
alias scr="cd ~/.config/scripts"
alias pack="cd ~/.packages"
alias web="cd ~/.public"
alias proj="source project_path"

# bash commands
alias ls="ls --color=auto"
alias la="ls -a"
alias l="ls -CF"
alias ..="cd .."
alias gs="git status"
alias mv="mv -i"
alias rm="rm -i"

# macros


export PATH=$PATH:~/.local/bin

