## Functions
print_success() {
    # Print output in green
    printf "\e[0;32m  [✔] $1\e[0m\n"
}

print_error() {
    # Print output in red
    printf "\e[0;31m  [✖] $1 $2\e[0m\n"
}

print_result() {
    [ $1 -eq 0 ] \
        && print_success "$2" \
        || print_error "$2"

    [ "$3" == "true" ] && [ $1 -ne 0 ] \
        && exit
}

##############################################################################################################
### XCode Command Line Tools
#      thx https://github.com/alrra/dotfiles/blob/ff123ca9b9b/os/os_x/installs/install_xcode.sh

# If this repo is comes from zip download, should install xcode command line tools
if ! xcode-select --print-path &> /dev/null; then

    # Prompt user to install the XCode Command Line Tools
    xcode-select --install &> /dev/null

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Wait until the XCode Command Line Tools are installed
    until xcode-select --print-path &> /dev/null; do
        sleep 5
    done

    print_result $? 'Install XCode Command Line Tools'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Point the `xcode-select` developer directory to
    # the appropriate directory from within `Xcode.app`
    # https://github.com/alrra/dotfiles/issues/13

    sudo xcode-select -switch /Applications/Xcode.app/Contents/Developer
    print_result $? 'Make "xcode-select" developer directory point to Xcode'

    # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    # Prompt user to agree to the terms of the Xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi
##############################################################################################################

############################################################################################################
### Init install

# Install homebrew
mkdir $HOME/homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C $HOME/homebrew

export PATH=$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH

sh ./brew.sh
sh ./brew-cask.sh

echo "------------------> brew libs install finished"

###
############################################################################################################

# add settings for macos
sh ./.osx

############################################################################################################
### install version management tool

# setup zsh antigen
mkdir -p $HOME/code/antigen
curl -L git.io/antigen > $HOME/code/antigen/antigen.zsh

# setup nvm for node/js dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

# setup sdkman for java dev
curl -s "https://get.sdkman.io" | bash

# setup pyenv for python dev
brew install pyenv
brew install pipenv

# setup rust cargo
curl https://sh.rustup.rs -sSf | sh


############################################################################################################
# Link the dotfiles to $HOME/
sh ./symlink-setup.sh

# Load Custom env settings
# e.g. load local k8s minucube env.

# sh ./extends/local-k8s.sh

# Set zsh as default shell
# chsh -s $(which zsh)

echo "------------------> All Finished, Be Happy!"
