ln -sf $PWD $HOME/.config/nvim
#ln -sf $PWD/.vimrc $HOME/.config/nvim
#ln -sf $PWD/.gvimrc $HOME
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.config/nvim/bundle/Vundle.vim
nvim +PluginInstall +qall
