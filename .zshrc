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
eval "$(/Users/luckyzhou/.local/bin/mise activate zsh)" # added by https://mise.run/zsh
