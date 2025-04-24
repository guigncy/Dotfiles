# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Load aliases from a separate file
if [ -f "$HOME/.aliases" ]; then
    source "$HOME/.aliases"
fi

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