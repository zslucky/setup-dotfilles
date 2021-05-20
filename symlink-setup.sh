## remove old files for new mac first
rm -rf $PWD/.vim
rm -rf $HOME/.zshrc
rm -rf $HOME/.bash_profile
rm -rf $HOME/.bash_prompt
rm -rf $HOME/.inputrc
rm -rf $HOME/.vimrc
rm -rf $HOME/.aliases
rm -rf $HOME/.extra
rm -rf $HOME/.functions
rm -rf $HOME/.gitignore
rm -rf $HOME/.gitconfig
## remove finished

# Link .vim to home
ln -fs $PWD/.vim $HOME

# Create Link
ln -fs $PWD/.zshrc $HOME/.zshrc
ln -fs $PWD/.bash_profile $HOME/.bash_profile
ln -fs $PWD/.bash_prompt $HOME/.bash_prompt
ln -fs $PWD/.inputrc $HOME/.inputrc
ln -fs $PWD/.vimrc $HOME/.vimrc
ln -fs $PWD/.aliases $HOME/.aliases
ln -fs $PWD/.extra $HOME/.extra
ln -fs $PWD/.functions $HOME/.functions
ln -fs $PWD/.gitignore $HOME/.gitignore
ln -fs $PWD/.gitconfig $HOME/.gitconfig
