ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

unset file;
plugins=(git bundler rake-fast rails docker cp)
source $ZSH/oh-my-zsh.sh

for file in ~/.{exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
eval "$(starship init zsh)"

eval "$(direnv hook zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init --cmd=cd zsh)"
source /Users/jheck/.config/op/plugins.sh

. "$HOME/.atuin/bin/env"

eval "$(atuin init zsh --disable-up-arrow)"
