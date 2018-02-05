# Force remove the exists file
rm -f ~/.zshrc
rm -f ~/.vimrc
rm -f ~/.gitignore
rm -f ~/.gitconfig

# Create Link
ln ./.vimrc ~/.vimrc
ln ./.zshrc ~/.zshrc
ln ./.gitignore ~/.gitignore
ln ./.gitconfig ~/.gitconfig