###############################################
#             MacOS .bash_profile             #
###############################################

#if there is a .bashrc file, load it
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

#Silence this warning after upgrading to Mac Os Catalina 10.15
    # The default interactive shell is now zsh.
    # To update your account to use zsh, please run `chsh -s /bin/zsh`.
    # For more details, please visit https://support.apple.com/kb/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

#----------------------------------------------------------------
#set default compiler to clang
export CC=clang

#set color coding by program type / directory etc.
#----------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=gxFxCxDxBxegedadagacad
export JUNIT_HOME=/usr/share/java
export CLASSPATH=$CLASSPATH:/usr/shared/java/hamcrest-core-1.3
export CLASSPATH=$CLASSPATH:/usr/shared/java/junit-4.11

#----------------------------------------------------------------

#welcome Message:
ore="\033[31m"
obe="\033[1;34m"
oge="\033[32m"
ce="\033[0m"

clear
echo -e "${obe}                          _     _______ _${ce}"
echo -e "${obe}    /\                   | |   |__   __(_)${ce}"
echo -e "${obe}   /  \   __ _  ___ _ __ | |_     | |   _ _ __ ___  _ __ ___  _   _${ce}"
echo -e "${obe}  / /\ \ / _' |/ _ \ '_ \| __|    | |  | | '_ ''_ \| '_ ''_ \| | | |${ce}"
echo -e "${obe} / ____ \ (_| |  __/ | | | |_     | |  | | | | | | | | | | | | |_| |${ce}"
echo -e "${obe}/_/    \_\__, |\___|_| |_|\__|    |_|  |_|_| |_| |_|_| |_| |_|\__, |${ce}"
echo -e "${obe}          __/ |                                                __/ |${ce}"
echo -e "${obe}         |___/                                                |___/${ce}"
#echo -ne "Today is : "; date
echo -e ""

#----------------------------------------------------------------

# Setting PATH for Python 3.7
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export GPG_TTY=$(tty)
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/libpcap/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/libpcap/lib"
export CPPFLAGS="-I/usr/local/opt/libpcap/include"
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
