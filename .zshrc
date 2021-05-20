# antigen time!
source ~/code/antigen/antigen.zsh

# antigen theme ys

local b="antigen-bundle"

$b command-not-found
$b robbyrussell/oh-my-zsh plugins/z

# Load default dotfiles
source ~/.bash_profile

# export homebrew and managed commands
export PATH=$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion