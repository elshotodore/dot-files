# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/elshotodore/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^ ' autosuggest-accept

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.zsh/zshrc.sh
XUSER="[%{$fg_bold[green]%}$USERNAME%{$reset_color%}]"
XHOST="[%{$fg[green]%}$HOST%{$reset_color%}]"
XPATH="[%{$fg[cyan]%}%/%{$reset_color%}]"
PROMPT="$XUSER$XHOST$XPATH$(git_super_status)"


#export PS1="[%* - %D][${DOCKER_HOST:0:17}] %d %% "
alias ls='ls --color=auto'
alias ll='ls -la'
alias h='history | grep '
alias cls='clear'
alias ws='cd ~/workspace'
alias zookeeperstart='/opt/zookeeper/bin/zkServer.sh start'
alias zookeeperstop='/opt/zookeeper/bin/zkServer.sh stop'
alias kafkastart='/opt/kafka/bin/kafka-server-start.sh /opt/kafka/config/server.properties'
alias kafkaconnectstart='/opt/kafka/bin/connect-distributed.sh /opt/kafka/config/connect-distributed.properties'
alias elasticsearchstart='/opt/elasticsearch/bin/elasticsearch'
alias kibanastart='/opt/kibana/bin/kibana'

alias monitormodestart='sudo airmon-ng start wlx841b5e968b2c'
alias monitormodestop='sudo airmon-ng stop wlan0mon'
alias bessidestart='cd /data/wifi/bessidelogs && sudo besside-ng wlan0mon'
alias bettercapstart='cd /data/wifi/bettercaplogs && sudo /opt/bettercap/bettercap -caplet http-ui'