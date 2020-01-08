###############################################
#             MacOS .bash_aliases             #
###############################################
alias tim='echo My name is Tim'

#print this file from terminal
alias aliashelp='cat ~/.bash_aliases'

#Start a new terminal shell
alias resetshell='exec bash -l'

#reboot computer
alias system_restart='sudo shutdown -r now'
alias system_sleep='sudo shutdown -s now'

#map the network. you can also pipe to grep *** to narrow results
alias mapnet='nmap -sn 192.168.1.0/24'
alias osversion='uname -s'

#phyton alias
alias py='python3'

#finder show/hide hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder'

#ls with list and showing hidden
alias lsa='clear && ls -la'

#show only the (sub)directories
function lsdir() {
    clear &&
    echo '************************************************************' &&
    echo 'List of sub-directories' &&
    echo '************************************************************' &&
    ls -d */
}

#GitHub aliases
alias status='git status'
alias commit='git commit -m'

#weather forcast in terminal
alias weather='curl wttr.in'

#Finder spews .DS_Store directories all over your hard drive. Make life in git easier with the following command:
alias nukeds="find ./ -type f | grep .DS_Store | xargs rm"

#Sometimes it is nice to get a branch graph on the command line with git.  Useful alias here:
alias gitoverview="git log --graph --oneline --decorate --all"

#clear the screen
alias cl="clear"
#show size of disc in MB/GB vs. "blocks"
alias hdd="df -h"
#reset terminal as if just starting up
alias reset="source .bashrc"
#point the ctags location
alias ctags="`brew --prefix`/bin/ctags"
