# Edit config files
alias zshrc="$EDITOR $HOME/.zshrc; source $HOME/.zshrc"
alias sshconfig="$EDITOR $HOME/.ssh/config"
alias aliases="$EDITOR $DOTFILES/aliases.zsh; source $DOTFILES/aliases.zsh"
alias hosts="sudo $EDITOR /etc/hosts"

# Copy public key to clipboard
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo Public key copied to clipboard!"

# Nav
alias code="cd ~/Code"

# Laravel
alias a="php artisan"
alias tinker="php artisan tinker"
alias mfs="php artisan migrate:fresh --seed"

# Docker
alias dc="docker compose"
