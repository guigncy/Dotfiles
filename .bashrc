# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias
alias grep='grep --color=auto'
alias ls='ls --color=auto -h'
alias ll='ls -lh'
alias la='ls -Ah'
alias pacman='pacman --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias pacman-clean='sudo pacman -Rns $(pacman -Qtdq)'
alias please='sudo $(fc -ln -1)'  # Run the last command with sudo

# Bash completion 
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

# History settings to avoid duplicate lines
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Colorized prompt: green user@host, blue folder path
PS1='\[\e[32m\]\u@\h:\[\e[34m\]\w\[\e[0m\]\$ '
