# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
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
source ~/.zsh/zsh_prompt

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