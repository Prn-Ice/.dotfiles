### Added by Zplugin's installer
source '/home/havoc/.zplugin/bin/zplugin.zsh'
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk

source ~/.dotfiles/zsh/plugins.zsh 

source ~/.dotfiles/zsh/options.zsh 

source ~/.dotfiles/zsh/bindings.zsh

source ~/.dotfiles/zsh/aliases.zsh

source ~/.profile

source ~/.dotfiles/zsh/env.zsh

