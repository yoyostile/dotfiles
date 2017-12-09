ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

source ~/.aliases
source ~/.exports
source ~/.functions
source ~/.privates

plugins=(git bundler scw rake-fast rails docker cp)
source $ZSH/oh-my-zsh.sh

(wal -r > /dev/null &)
