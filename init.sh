ln -sf $PWD $HOME/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
nvim  -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
