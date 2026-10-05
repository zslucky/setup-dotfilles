# export homebrew and managed commands
export PATH=$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH

# antigen time!
# Create the antigen directory if it doesn't exist
if [ ! -d "$HOME/code/antigen" ]; then
  mkdir -p "$HOME/code/antigen"
fi

# Download Antigen script to $HOME/code/antigen/antigen.zsh
if [ ! -f "$HOME/code/antigen/antigen.zsh" ]; then
  curl -sSL https://raw.githubusercontent.com/antigen/antigen/master/antigen.zsh > "$HOME/code/antigen/antigen.zsh"
fi

# Verify that the file exists and is not empty
if [ ! -f "$HOME/code/antigen/antigen.zsh" ] || [ ! -s "$HOME/code/antigen/antigen.zsh" ]; then
  echo "Error: antigen.zsh not found or empty."
  exit 1
fi

# Source the Antigen script successfully
source "$HOME/code/antigen/antigen.zsh"

# Use this, as some themes and plugins rely on some functions in oh-my-zsh
antigen use oh-my-zsh

antigen theme ys

antigen bundle git
antigen bundle command-not-found
antigen bundle robbyrussell/oh-my-zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle agkozak/zsh-z

antigen apply

# Load default dotfiles
source ~/.bash_profile

# use mise to manage envs.
eval "\$(/Users/luckyzhou/.local/bin/mise activate zsh)" # added by https://mise.run/zsh