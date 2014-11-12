#!/bin/bash

echo "updating brew..."
brew update

echo "upgrading current formulae..."
brew upgrade

echo "installing brew formulae..."
#brew install apple-gcc42
brew install bash-completion
brew install fontforge ttfautohint
brew install git
brew install heroku-toolbelt
brew install imagemagick
#brew install mysql
brew install tig
brew install vim

#echo "setting up brew-cask..."
#brew tap phinze/cask
#brew install brew-cask

echo "installing casks..."
brew cask install alfred
brew cask install google-chrome
brew cask install iterm2
brew cask install keyremap4macbook
brew cask install macvim
brew cask install pckeyboardhack
brew cask install skype
brew cask install slate
