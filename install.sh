#!/bin/sh

if test ! $(xcode-select -p 2> /dev/null); then
  echo "Please re-run this script after Command Line Tools has been installed."
  xcode-select --install
  exit
fi

echo "Setting up your Mac..."

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  RUNZSH=no /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $HOME/.dotfiles/Brewfile

# Create a Code directory
if [[ ! -d "$HOME/Code" ]]; then
  mkdir $HOME/Code
fi

# Symlink the Mackup config file to the home directory
if [[ ! -f "$HOME/.mackup.cfg" ]]; then
  ln -s $HOME/.dotfiles/.mackup.cfg $HOME/.mackup.cfg
fi

touch $HOME/.hushlogin

# Set macOS preferences - we will run this last because this will reload the shell
source $HOME/.dotfiles/.macos

echo "Done. Please restart your computer for these changes to take effect."
