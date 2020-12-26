# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

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

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
