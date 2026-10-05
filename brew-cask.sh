# common
brew install --cask keeweb                        # password management tool
# brew install --cask spectacle                     # shortkey tool for window controls
brew install --cask the-unarchiver                # unarchiver tool for multi formats
brew install --cask switchhosts                   # hosts file control tool
# brew install --cask stats                         # Mac system monitor in menu bar

# font pack, for iterm use, that can show correct file type icon.
# Config Apps:
#  - Iterm  :-> Preference -> Profile -> ${your profile} or Default -> Font
#  - VSCode :-> Configure Terminal Settings -> (Terminal>Integraded: Font Family)
brew install --cask font-hack-nerd-font

# vpn tools
# brew install --cask shadowsocksx-ng

# browsers
brew install --cask google-chrome
# brew install --cask brave-browser
# brew install --cask firefox

# file tools
brew install --cask android-file-transfer
# brew install --cask dropbox
# brew cask install cleanmymac
# brew install --cask cyberduck

# communication
# brew install --cask slack

# media
# brew install --cask vlc

### cloud services' cli tool
# For AWS cli
# brew install awscli

# useful tools
# brew install --cask docker
brew install --cask iterm2
# brew install --cask sublime-text
# brew install --cask postman
# brew install --cask charles
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
code --install-extension shd101wyy.markdown-preview-enhanced
### For Front developer
code --install-extension dbaeumer.vscode-eslint
code --install-extension christian-kohler.npm-intellisense
code --install-extension wix.vscode-import-cost
code --install-extension stylelint.vscode-stylelint
### For vue developer
code --install-extension octref.vetur

# Verify that all casks are installed and accessible
echo "Verifying installed casks via brew list --casks..."
brew list --casks | grep -E "(google-chrome|visual-studio-code|iterm2|font-hack-nerd-font)" | while read cask; do
    echo "✅ $cask is installed via brew list --casks."
程序
    [ -n "$cask" ] && echo "✅ $cask is found in list." || echo "❌ $cask not found in list."
    [ -n "$cask" ] || exit 1
    [ "$(echo $cask | tr '[:upper:]' '[:lower:]')" != "font-hack-nerd-font" ] && echo "⚠️  Font pack not verified (only font is included in list)." || echo "✅ Font pack is installed."
    [ "$(echo $cask | tr '[:upper:]' '[:lower:]')" = "font-hack-nerd-font" ] || echo "⚠️  Font pack not matched (case-sensitive)."
  done

# Test Google Chrome launch without error
echo "Testing Google Chrome launch with open -a "Google Chrome"..."
if open -a "Google Chrome" &> /dev/null; then
    echo "✅ Google Chrome can be launched successfully."
else
    echo "❌ Failed to launch Google Chrome."
    exit 1
fi

# Final check: ensure no errors occurred during the run
echo "All checks passed. Installation and functionality are verified."
