# antigen time!
source ~/code/antigen/antigen.zsh

antigen theme ys

local b="antigen-bundle"

$b command-not-found
$b robbyrussell/oh-my-zsh plugins/z

# Load default dotfiles
source ~/.bash_profile
