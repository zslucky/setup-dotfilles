# brew install caskroom/cask/brew-cask

# tap caskroom versions
# brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts

# common
brew install --cask keeweb                        # password management tool
brew install --cask spectacle                     # shortkey tool for window controls
brew install --cask the-unarchiver                # unarchiver tool for multi formats
brew install --cask switchhosts                   # hosts file control tool
# brew install --cask vanilla
# brew install --cask youdaodict

# font pack, for iterm use, that can show correct file type icon.
# Config Apps:
#  - Iterm  :-> Preference -> Profile -> ${your profile} or Default -> Font
#  - VSCode :-> Configure Terminal Settings -> (Terminal>Integraded: Font Family)
brew install --cask font-hack-nerd-font

# vpn tools
brew install --cask shadowsocksx-ng
# brew install --cask shimo # shimo for multi protocol vpn

# browsers
brew install --cask google-chrome
# brew install --cask brave-browser
# brew install --cask firefox
# brew cask install torbrowser

# file tools
# brew install --cask android-file-transfer
# brew install --cask dropbox
# brew cask install cleanmymac
# brew install --cask cyberduck

# communication
# brew install --cask slack

# for work
# brew install --cask alfred

# media
# brew install --cask vlc

### cloud services' cli tool
# For AWS cli
# brew install awscli
# For heroku cli

# useful tools
brew install --cask docker
brew install --cask iterm2
brew install --cask sublime-text
# brew install --cask postman
brew install --cask charles
# brew install --cask wireshark
# brew install --cask intellij-idea-ce
brew install --cask visual-studio-code
### vs code plugin install
code --install-extension eamodio.gitlens
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wayou.vscode-todo-highlight
# If you need dracula theme, add it.
# code --install-extension dracula-theme.theme-dracula
code --install-extension 2gua.rainbow-brackets
code --install-extension formulahendry.code-runner
code --install-extension oderwat.indent-rainbow
code --install-extension shd101wyy.markdown-preview-enhanced
### For Front developer
code --install-extension dbaeumer.vscode-eslint
code --install-extension christian-kohler.npm-intellisense
code --install-extension wix.vscode-import-cost
code --install-extension stylelint.vscode-stylelint
### For vue developer
code --install-extension octref.vetur
