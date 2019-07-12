### Added by Zplugin's installer
source '/home/havoc/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

source /usr/share/zsh/plugins/alias-tips/alias-tips.plugin.zsh

source ~/.dotfiles/zsh/alias-tips.zsh

source ~/.dotfiles/zsh/plugins.zsh 

source ~/.dotfiles/zsh/options.zsh 

source ~/.dotfiles/zsh/bindings.zsh

source ~/.dotfiles/zsh/env.zsh

