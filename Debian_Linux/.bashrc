###############################################
#            Debian Linux .bashrc             #
###############################################

# prevent duplicate lines and lines starting with a space from appearing 
# in the history, see bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# set the history size
HISTSIZE=1000
HISTFILESIZE=2000

# keep the values of LINES and COLUMNS up to date after each command
shopt -s checkwinsize

#load the .bash_aliases file when the terminal starts
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


