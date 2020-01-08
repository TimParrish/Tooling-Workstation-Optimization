###############################################
#         Debian Linux .bash_aliases          #
###############################################
alias tim='echo Timmay'

#display this file in the terminal
alias aliashelp='cat ~/.bash_aliases'

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

#ctags
alias indexctags='ctags -R *'
#clear terminal
alias clr='clear'
#reboot
alias reboot='shutdown -r now'
#CPU information
alias cpuinfo='lscpu'
#Check the disk usage and show in (h)uman readable form
alias diskUsage='df -h'
#Check the memory usage and show in (h)human readable form
alias memUsage='free -h'
#Open Image
alias openimg='xdg-open'
#launch calculator from terminal
alias calc='gnome-calculator'

#machine specific aliases, update MACHINE_NAME, this example is for a Debian system
if [ "$HOME" = /home/MACHINE_NAME ]; then
    #Machine has 6 cores, 12 threads total, use 10 for make commands
    alias make='make -j10'
fi

