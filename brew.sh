# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

###########################################
### brew-cask

# Install cask
brew install caskroom/cask/brew-cask
# tap caskroom versions
brew tap caskroom/versions

###
###########################################s


# Install z
brew install z

# vim
brew install vim --with-override-system-vi

# clean the outdated versions
brew cleanup