# Edit config files
alias zshrc="$EDITOR $HOME/.zshrc; source $HOME/.zshrc"
alias sshconfig="$EDITOR $HOME/.ssh/config"
alias aliases="$EDITOR $DOTFILES/aliases.zsh; source $DOTFILES/aliases.zsh"
alias hosts="sudo $EDITOR /etc/hosts"
alias dotfiles="vs $HOME/.dotfiles"

# Copy public key to clipboard
alias pubkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo Public key copied to clipboard!"

# Nav
alias code="cd ~/Code"

# Laravel
alias sail="[ -f sail ] && sh sail || sh vendor/bin/sail"
alias s="sail"
alias a="sail artisan"
alias mfs="sail artisan migrate:fresh --seed"
alias tinker="sail tinker"

# Docker
alias dc="docker compose"

# Filebot
alias organise-media='filebot -script fn:amc --action copy -non-strict "$HOME/Downloads" --def music=n --conflict auto --def clean=y --def excludeList="$HOME/.filebot-exclude-list" --def movieFormat="$HOME/Movies/{n}" --def seriesFormat="$HOME/TV Shows/{n}/Season {s}/{e} {t}" --output "$HOME/"'
