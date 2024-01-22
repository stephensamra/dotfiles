#!/bin/sh

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  RUNZSH=no /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $HOME/.dotfiles/Brewfile

sudo xcodebuild -license accept

# Create a Code directory
if [[ ! -d "$HOME/Code" ]]; then
  mkdir $HOME/Code
fi

# Install nvm to manage node versions.
if [[ ! -d "$HOME/.nvm" ]]; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
fi

touch $HOME/.hushlogin

# Set macOS preferences - we will run this last because this will reload the shell
source $HOME/.dotfiles/.macos

# Add the backup job to launchd.
# if [[ ! -d "$HOME/Library/LaunchAgents" ]]; then
#   mkdir "$HOME/Library/LaunchAgents"
# fi
# ln -s $HOME/.dotfiles/local.backup.plist $HOME/Library/LaunchAgents/local.backup.plist
# launchctl load $HOME/Library/LaunchAgents/local.backup.plist

echo "Done. Please restart your computer for these changes to take effect."
