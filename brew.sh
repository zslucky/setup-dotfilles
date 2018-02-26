# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install some useful tools
brew install telnet
brew install yarn # Instead of installed by npm
brew install git-lfs # Install git large file storage

# Install z
brew install z

# vim
brew install vim --with-override-system-vi

# clean the outdated versions
brew cleanup