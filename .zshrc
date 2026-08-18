# export homebrew and managed commands
export PATH=$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH

# antigen time!
source ~/code/antigen/antigen.zsh

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
eval "$(~/.local/bin/mise activate zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"

export PATH="$HOME/.local/bin:$PATH"
