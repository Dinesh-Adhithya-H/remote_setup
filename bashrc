# put this as .bashrc into homedir

# If not running interactively, don't do anything
[ -z "$PS1" ] && return


# Enable useful options:
shopt -s cdspell
shopt -s cdable_vars
shopt -s checkhash
shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s autocd

complete -d cd

PROMPT_DIRTRIM=2
export PS1="\h:\w > "

# PATH
#PATH=$HOME/bin/opt:$PATH
export PATH

# permissions for new files
umask 007

# less
alias more='less'
export LESS='-iRFKX'
export PAGER='less'
export EDITOR=vi

# history
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# search in history
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

# be a bit more considered
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

# ls
alias ls='ls --color -F'
alias ll='ls -lv --group-directories-first'
alias la='ls -a'
alias lx='ls -lX'
alias lq='ls -ltr'
alias lS='ls -lSr'


# useful for remote work
alias top='htop'
alias topu='htop -u $USER'

alias tm='tmux attach || tmux new'

alias juplab='source ~/bin/jupyterlab/bin/activate; jupyter lab --no-browser --ip=\*'

