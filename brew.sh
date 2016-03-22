#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

brew install ack
brew install coreutils # Install GNU core utilities.
brew install ctags
brew install findutils # GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install git
brew install gnu-sed --with-default-names
brew install go
brew install moreutils # Install some other useful utilities like `sponge`.
brew install rbenv
brew install reattach-to-user-namespace
brew install ruby-build
brew install speedtest_cli
brew install tig
brew install tmux
brew install tree
brew install tree
brew install vim --override-system-vi
brew install wget --with-iri
brew install youtube-dl

brew cleanup
