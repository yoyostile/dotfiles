ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

for file in ~/.{exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

unset file;
plugins=(git bundler scw rake-fast rails docker cp fasd)
source $ZSH/oh-my-zsh.sh

(printf $(wal -r) &)
