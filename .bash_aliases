## Colorize the ls output ##
alias ls='ls --color=auto'
 
## Use a long listing format ##
alias ll='ls -la'
 
## Show hidden files ##
alias l.='ls -d .* --color=auto'

## Show seconds as well ##
alias llt='ls -la --full-time'

# Clear the terminal
alias cls='clear'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
#alias ..='cd ..'
#alias ...='cd ../../../'
#alias ....='cd ../../../../'
#alias .....='cd ../../../../'
#alias .4='cd ../../../../'
#alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir='mkdir -pv'

# Monitor logs
alias syslog='sudo tail -100f /var/log/syslog'
alias messages='sudo tail -100f /var/log/messages'

alias mount='mount |column -t'

# Set VIM as default
alias vi=vim

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'

# This is GOLD for finding out what is taking so much space on your drives!
alias diskspace="du -S | sort -n -r |more"

# Search inside files
alias searchFiles=sh\ -c\ \''find . -name \*.* -type f -print0 | xargs -0 grep --color -Hn "$1"'\'\ -

# Show me the size (sorted) of only the folders in this directory
alias folders="find . -maxdepth 1 -type d -print | xargs du -sk | sort -rn"

## pass options to free ## 
alias meminfo='free -m -l -t'

## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'

# List paths
alias path='echo -e ${PATH//:/\\n}'

# Search in history
alias h='history | grep '

alias install='sudo apt-get install '

# Sublime-text 3
alias sublime='/opt/sublime_text/sublime_text '

# Simple Web server and launch browser if available
alias webserver='python -m SimpleHTTPServer 8000 | xdg-open http://localhost:8000'

# less > more
alias more='less'
alias lmnt01='rdesktop l-mnt-01.zanox-live.de -ufrank.vogel -dZANOX-LIVE.de -p- -g1280x1024'
alias rdp='rdesktop l-mnt-01.zanox-live.de -ufrank.vogel -dZANOX-LIVE.de -p- -g1280x1024'
alias ws='cd ~/workspace'
alias gpr='git pull --rebase'
alias gprm='git pull --rebase origin master'
alias mvn305='/opt/mvn305/bin/mvn'

##################
# User defined functions
##################
# Extract all kinds of compressed files
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       rar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
