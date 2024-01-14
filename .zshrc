export DOTFILES=$HOME/.dotfiles
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="cloud"
HIST_STAMPS="yyyy-mm-dd"
ZSH_CUSTOM=$DOTFILES

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR=nano
export LC_ALL=en_IE.UTF-8
export LANG=en_IE.UTF-8

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Herd injected PHP binary.
export PATH="/Users/stephen/Library/Application Support/Herd/bin/":$PATH

# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/stephen/Library/Application Support/Herd/config/php/82/"
