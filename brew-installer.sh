#!/bin/bash

echo "updating brew..."
brew update

echo "upgrading current formulae..."
brew upgrade

echo "installing brew formulae..."
brew install bash-completion
brew install fontforge ttfautohint
brew install git
brew install heroku-toolbelt
brew install imagemagick
brew install tig
brew install vim

echo "setting up brew-cask..."
brew install caskroom/cask/brew-cask

echo "installing casks..."
brew cask install alfred
brew cask install google-chrome
brew cask install iterm2
brew cask install macvim
brew cask install slate
brew cask install seil
brew cask install karabiner
brew cask install vlc
brew cask install virtualbox
brew cask install slack
brew cask install firefox
brew cask install adobe-creative-cloud

