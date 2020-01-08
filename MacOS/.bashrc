###############################################
#                MacOS .bashrc                #
###############################################

# customize the terminal prompt
PS1="\[$(tput setaf 88)\]\h:";     #host color
PS1+="\[$(tput setaf 22)\]\w-> ";  #working directory
PS1+="\[$(tput setaf 32)\]";       #user input 
export PS1;
export PATH=$PATH:$HOME/bin;

# append to the history file, don't overwrite it
shopt -s histappend

# set the history size
HISTSIZE=1000
HISTFILESIZE=2000

# if a .bash_aliases file exists, load it
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
