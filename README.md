# setup-dotfilles
my mac's setup dotfiles for new machines

## Setup guid

> If you got network issue, you can use socks proxy before run script e.g. `export ALL_PROXY=socks5://127.0.0.1:1086`

1. Do some custom setting in `setup-custom.sh`. (e.g. setup your github profile, setup your hostname etc...)
2. Update some osx prefer setting in `.osx` if needed.
3. Run `setup-my-machine.sh`

## Custom setting

All dotfiles are linked to your home directory, so you can update dotfiles to set your env any time you want.

1. `.extra` can add some additional setting for env.
2. `.functions` can add some custom function you used.
3. `.aliases` can add some alias in your cli.
4. Other like `.gitconfig`, `.gitignore`, `.vimrc` can add special application settings.
