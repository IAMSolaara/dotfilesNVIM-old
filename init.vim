" ┌──────────────────────────────────────────────────────────────────────────┐
" │ lorecast162's                                                            │
" │      _   __         _    ___              ______            _____        │
" │     / | / /__  ____| |  / (_)___ ___     / ____/___  ____  / __(_)___ _  │
" │    /  |/ / _ \/ __ \ | / / / __ `__ \   / /   / __ \/ __ \/ /_/ / __ `/  │
" │   / /|  /  __/ /_/ / |/ / / / / / / /  / /___/ /_/ / / / / __/ / /_/ /   │
" │  /_/ |_/\___/\____/|___/_/_/ /_/ /_/   \____/\____/_/ /_/_/ /_/\__, /    │
" │                                                               /____/     │
" │                                                                          │
" └──────────────────────────────────────────────────────────────────────────┘
"

lua require('init_config')
" configure config path based on OS --lorecast162
if has('win32')
	let configPath = $HOME . "\\AppData\\Local\\nvim"
else
	let configPath = $HOME . "/.config/nvim"
endif

filetype off                  " required

" ┌─────────────────────────────────────────┐
" │      ____  __            _              │
" │     / __ \/ /_  ______ _(_)___  _____   │
" │    / /_/ / / / / / __ `/ / __ \/ ___/   │
" │   / ____/ / /_/ / /_/ / / / / (__  )    │
" │  /_/   /_/\__,_/\__, /_/_/ /_/____/     │
" │                /____/                   │
" │                                         │
" └─────────────────────────────────────────┘

" set the runtime path to include Vundle and initialize
exec 'set rtp+=' . configPath . "/bundle/Vundle.vim"
call vundle#begin(configPath . '/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" general styling --lorecast162
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim'
Plugin 'glepnir/dashboard-nvim'
Plugin 'ryanoasis/vim-devicons'
Plugin 'norcalli/nvim-colorizer.lua'

" for programming languages --lorecast162
Plugin 'kovetskiy/sxhkd-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'

" misc plugins --lorecast162
Plugin 'vim/killersheep'
Plugin 'neoclide/coc.nvim'
Plugin 'airblade/vim-gitgutter'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-telescope/telescope-fzf-native.nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'PhilRunninger/nerdtree-visual-selection'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'liuchengxu/vista.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

lua require('keybindings')

lua require('misc_configs')

lua require('plugins')

