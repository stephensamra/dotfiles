# Config files
alias zshrc="nano $HOME/.zshrc; source $HOME/.zshrc"
alias sshconfig="nano $HOME/.ssh/config"
alias aliases="nano $DOTFILES/aliases.zsh; source $DOTFILES/aliases.zsh"
alias dotfiles="cd $HOME/.dotfiles"
alias known_hosts="nano $HOME/.ssh/known_hosts"

# Copy public key to clipboard
alias pubkey="cat ~/.ssh/id_ed25519.pub | pbcopy && echo Copied public key."

# Nav
alias code="cd ~/Code"
alias icloud="cd $HOME/Library/Mobile\ Documents/com~apple~CloudDocs"

# vscode
alias vs="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"

# Laravel
alias a="php artisan"
alias mf="a migrate:fresh"
alias mfs="a migrate:fresh --seed"
alias tinker="a tinker"
alias t="./vendor/bin/pest"
alias s="./vendor/bin/sail"
alias sa="s artisan"

# Docker
alias dc="docker compose"

# Filebot
alias organise-media='filebot -script fn:amc --action copy -non-strict "$HOME/Downloads" --def music=n --conflict auto --def clean=y --def excludeList="$HOME/.filebot-exclude-list" --def movieFormat="$HOME/Movies/{n}" --def seriesFormat="$HOME/TV Shows/{n}/Season {s}/{e} {t}" --output "$HOME/"'

# MRSK/Kamal
alias mrsk='docker run --rm -it -v $HOME/.ssh:/root/.ssh -v /var/run/docker.sock:/var/run/docker.sock -v ${PWD}/:/workdir  ghcr.io/mrsked/mrsk'
alias kamal='docker run -it --rm -v "${PWD}:/workdir" -v "/run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock" -e SSH_AUTH_SOCK="/run/host-services/ssh-auth.sock" -v /var/run/docker.sock:/var/run/docker.sock ghcr.io/basecamp/kamal:latest'

# Terraform
alias tf="terraform"
