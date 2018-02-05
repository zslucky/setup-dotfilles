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
###
##############################################################################################################

############################################################################################################
### Init install

# Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install zsh
brew install zsh

# Set zsh as default shell
chsh -s $(which zsh)

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

###
############################################################################################################


############################################################################################################
### Install brew libs

sh ./brew.sh

###
############################################################################################################


############################################################################################################
### init for libs

# source z
. /usr/local/etc/profile.d/z.sh

# setup git info
git config --global user.name "zsney"
git config --global user.email "zsney.lzhou@gmail.com"

###
############################################################################################################

############################################################################################################
###

# add settings for macos
sh ./.osx

###
############################################################################################################

############################################################################################################
###

# Link the dotfiles to $HOME/
sh ./symlink-setup.sh

###
############################################################################################################

############################################################################################################
### Finally install the apps

sh ./brew-cask.sh

###
############################################################################################################
