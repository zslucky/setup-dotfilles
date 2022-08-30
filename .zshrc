# export homebrew and managed commands
export PATH=$HOME/homebrew/bin:$HOME/homebrew/sbin:$PATH

# antigen time!
source ~/code/antigen/antigen.zsh

# Use this, as some themes and plugins rely on some functions in oh-my-zsh
antigen use oh-my-zsh

antigen theme ys

antigen bundle git
antigen bundle command-not-found
antigen bundle robbyrussell/oh-my-zsh plugins/z
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Load default dotfiles
source ~/.bash_profile
source "$HOME/.cargo/env"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
