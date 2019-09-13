# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install some useful tools
brew install telnet
brew install yarn # Instead of installed by npm
brew install git-lfs # Install git large file storage
brew install lsd # lsd to inhance ls, should config fonts in iterms

# Install z
brew install z

# vim
brew install vim --with-override-system-vi

# heroku
# brew install heroku/brew/heroku

# clean the outdated versions
brew cleanup
