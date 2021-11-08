ln -sf $PWD $HOME/.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.config/nvim/bundle/Vundle.vim
nvim +PluginInstall +qall
