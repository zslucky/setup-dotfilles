# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils

# brew install gnu-sed --with-default-names
# brew install vim --with-override-system-vi

# Install some useful tools
brew install telnet
# brew install yarn # Instead of installed by npm
# brew install git-lfs # Install git large file storage
brew install lsd # lsd to inhance ls, should config fonts in iterms

# Install git 
brew install git

# Install yarn for FE use, as many projects use yarn instead of npm
brew install yarn

# ping & traceroute
brew install mtr
  # allow mtr to run without sudo
  mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//')
  sudo chmod 4755 $mtrlocation/sbin/mtr
  sudo chown root $mtrlocation/sbin/mtr


# Install zsh
brew install zsh

# clean the outdated versions
brew cleanup
