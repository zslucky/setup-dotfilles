# Force remove the exists file
rm -f ~/.extra
rm -f ~/.zshrc
rm -f ~/.vimrc
rm -f ~/.gitignore
rm -f ~/.gitconfig

# Create Link
ln ./.extra ~/.extra
ln ./.vimrc ~/.vimrc
ln ./.zshrc ~/.zshrc
ln ./.gitignore ~/.gitignore
ln ./.gitconfig ~/.gitconfig