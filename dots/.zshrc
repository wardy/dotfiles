# Path to your oh-my-zsh installation.
export ZSH=/Users/wardy/.oh-my-zsh
#source ~/.functions

ZSH_THEME="pygmalion"

#ENABLE_CORRECTION="true"

plugins=(osx npm git yarn)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
alias glg='fshow "master.."'
alias gst='gs'
alias glog='fshow'
alias simple='python -m SimpleHTTPServer 8888'
alias web='cd ~/Development/atlas/atlas-web-and-tv/apps/atlas-web/'
alias concourse='cd ~/Development/atlas/atlas-web-and-tv/concourse/'
alias dev='cd ~/Development/'
alias gds='cdiff -s -w 0'
alias projects='cd ~/Development/projects/'
alias atlas='cd ~/Development/atlas'
alias vim='nvim'
alias testw='npm run test:watch'
alias tu='npm run test:unit'
alias i1='npm run dev:i1'
alias si1='npm run server:i1'
alias flya='fly -t atlas'
alias gunwip='git log -1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias checkpoint='gwip && ggpush -f && git log -1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias dev='npm run dev'
alias devops='kubectl get pods --namespace=otticlients | grep web-rc | awk '{print $1}' | xargs -I {} sh -c "kubectl logs -f --since=1m --namespace=otticlients {} | while read -r line; do echo \"{} - \$line\"; done &"'
export PATH="$PATH:./node_modules/.bin"
eval "$(scmpuff init -s)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(rbenv init -)"

