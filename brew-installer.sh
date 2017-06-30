#!/bin/bash

echo "updating brew..."
brew update

echo "upgrading current formulae..."
brew upgrade

echo "installing brew formulae..."
brew install bash-completion
brew install git
brew install heroku-toolbelt
brew install imagemagick
brew install node
brew install postgresql
brew install ruby-build
brew install tig
brew install vim

echo "setting up brew-cask..."
brew install caskroom/cask/brew-cask

echo "installing casks..."
brew cask install adobe-creative-cloud
brew cask install firefox
brew cask install google-chrome
brew cask install hammerspoon
brew cask install iterm2
brew cask install karabiner-elements
brew cask install macvim
brew cask install sketch
brew cask install slack
brew cask install virtualbox
