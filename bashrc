############################
# My Own Exports
############################


# Export proxy to be able to connect with resources on internet.
# This must be replaced with sub.proxy.att.com but that doesnt work properly.
export HTTP_PROXY="http://proxy.com:3128/"
export HTTPS_PROXY="http://proxy.com:3128/"
export NO_PROXY="127.0.0.1,localhost"

# Updated promt to show only current directory. No clutter makes prompt respond superfast.
export PS1="\[\e[32m\]\W\[\e[m\]\[\e[37m\]\\$\[\e[m\] "

# This helps connecting to docer running on host windos 10. No need to install docker on WSL
export DOCKER_HOST=tcp://localhost:2375

# This variable sets up the defaul browser WSl will use to open links
# This is definately needed to open K8s dashboard using az aks browse command.
export BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"

# Adding linkerd to the PATH.
export PATH=$PATH:$HOME/.linkerd2/bin

# Aliases. They make life easier.
alias ls="ls -lrth --color=auto"
alias k="kubectl"
alias kube="kubectl"
alias tf="terraform"
alias ssh_az_buildagent="ssh -A -t jumpuser@130.3.111.41 ssh -A av035p@10.0.1.4"

# Setting up ssh agent at the startup so that agent forwarding works fine.
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Setting to remove ugly directory color whcih have full permissions
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
