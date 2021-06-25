#!/bin/bash
echo "export PATH=/goinfre/$USER/.brew/bin:$PATH" >> ~/.zshrc && source ~/.zshrc
echo "set -x PATH $PATH /goinfre/$USER/.brew/bin" >> ~/.config/fish/config.fish
curl -L https://get.oh-my.fish | fish
rm -rf ~/Library/Application\ Support/Google && ln -s /goinfre/$USER/Google ~/Library/Application\ Support/Google
rm -rf ~/Library/Application\ Support/Code && ln -s /goinfre/$USER/Code ~/Library/Application\ Support/Code
ln -s /goinfre/$USER/.vim ~/.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
