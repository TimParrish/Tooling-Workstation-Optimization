###############################################
#              Windows .bashrc                #
###############################################

## Create a function to get back to the desktop
moveHome() { cd /c/Users/USERNAME/Desktop; }

export -f moveHome

export HOME=/c/Users/USERNAME/Desktop

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi
