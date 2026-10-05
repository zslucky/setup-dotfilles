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
    [ $1 -eq 0 ] \n    && print_success "$2" \n    || print_error "$2"
\n    [ "$3" == "true" ] && [ $1 -ne 0 ] \n        && exit
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

    # Prompt user to agree to the terms of the xcode license
    # https://github.com/alrra/dotfiles/issues/10

    sudo xcodebuild -license
    print_result $? 'Agree with the XCode Command Line Tools licence'

fi
##############################################################################################################

############################################################################################################
### Install Homebrew

# Check if Homebrew is already installed
if ! command -v brew &> /dev/null; then

    # Create $HOME/homebrew directory
    mkdir -p $HOME/homebrew

    # Install Homebrew using the official script from GitHub
    curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

    # Add $HOME/homebrew/bin to PATH
    export PATH=$HOME/homebrew/bin:$PATH

    # Verify installation by running brew --version
    if ! brew --version &> /dev/null; then
        print_error 'Homebrew installation failed' 'Please check the above installation steps and try again.'
        exit 1
    fi

    print_success 'Homebrew installed successfully'

else
    print_success 'Homebrew is already installed, skipping installation.'
fi

############################################################################################################

### Init install

# Install brew packages
sh ./brew.sh

# Install cask
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

############################################################################################################
# Link the dotfiles to $HOME/
sh ./symlink-setup.sh

### Install tools after symlink-setup
sh ./post-brew.sh

# Load Custom env settings
# e.g. load local k8s minucube env.

# sh ./extends/local-k8s.sh

# Set zsh as default shell
# chsh -s $(which zsh)

echo "------------------> All Finished, Be Happy!"
