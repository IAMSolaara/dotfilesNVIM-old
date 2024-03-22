# Deprecation notice!
I won't be updating these dotfiles for the foreseeable future. Please update to the [new ones](https://github.com/IAMSolaara/dotfilesNVIM).

I might come back to these and update them though. I'll see :3

# Instructions 

To use these NeoVim configs you need to have neovim >=0.7 and the following dependencies:
 * `nodejs` 
    * Many LTS distros have too old NodeJS versions (you need at least node 14 for `coc`) so in that case I suggest you use [nvm](https://github.com/nvm-sh/nvm) until you have up-to-date repos. Ditto for `npm`.
 * `npm`
 * `rustup` and other rust utils for rust-analizer
 * `clangd` for C/C++ CoC

Then you just have to run `./init.sh` here and the script will automatically install this config for you and install any Vundle plugin
