set nocompatible              " be iMproved, required
"set tab stuff --lorecast162
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
" turn search highlighting off because it sucks --lorecast162
set nohlsearch
" turn line wrapping off --lorecast162
set nowrap
" enable number lines --lorecast162
set number
" enable mouse functionality in terminal --lorecast162
set mouse=a
" turn on syntax highlighting --lorecast162
syntax on
" avoid vim overriding terminal background --lorecast162
autocmd ColorScheme * highlight Normal ctermbg=NONE guibg=NONE
autocmd ColorScheme * highlight NonText ctermbg=NONE guibg=NONE

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" general styling --lorecast162
Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'
Plugin 'dracula/vim'
Plugin 'glepnir/dashboard-nvim'

" for programming languages --lorecast162
Plugin 'kovetskiy/sxhkd-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'MaxMEllon/vim-jsx-pretty'

" misc plugins --lorecast162
Plugin 'vim/killersheep'
Plugin 'neoclide/coc.nvim'
Plugin 'airblade/vim-gitgutter'

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

" enable dracula airline theme --lorecast162
let g:airline_theme='dracula'
let g:airline_powerline_fonts = 1

color dracula
let g:netrw_banner = 0
" enable dracula theme --lorecast162
color dracula

" get rid of the banner in netrw --lorecast162
let g:netrw_banner = 0

"TODO add bindings to handle tabs and splits with LEADER
" set space to do nothing --lorecast162
"nnoremap <Space> <Nop>

" remap space to leader key --lorecast162
"let mapleader = "\<Space>"

" rapid key bindings with leader --lorecast162
"map <Leader>q q <CR>

" fix syntax highlighting getting out of sync on big JS/JSX/TS/TSX files --lorecast162
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" bindings to move lines --lorecast162
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" set Coc plugins --lorecast162
let g:coc_global_extensions = ['coc-tsserver', 'coc-rls']

" use prettier if it's installed --lorecast162
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" GitGutter settings --lorecast162
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
let g:airline#extensions#hunks#enabled = 1

nnoremap gph<CR> :GitGutterPrevHunk<CR>
nnoremap gnh<CR> :GitGutterNextHunk<CR>
nnoremap gsh<CR> :GitGutterStageHunk<CR>
nnoremap guh<CR> :GitGutterUndoHunk<CR>

highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

" dashboard-nvim settings --lorecast162
let g:dashboard_custom_header =<< trim END
__/\\\\____________/\\\\___________________________________________________________
 _\/\\\\\\________/\\\\\\___________________________________________________________
  _\/\\\//\\\____/\\\//\\\__________________________________/\\\_____________________
   _\/\\\\///\\\/\\\/_\/\\\_____/\\\\\\\\___/\\/\\\\\\____/\\\\\\\\\\\__/\\\\\\\\\____
    _\/\\\__\///\\\/___\/\\\___/\\\/////\\\_\/\\\////\\\__\////\\\////__\////////\\\___
     _\/\\\____\///_____\/\\\__/\\\\\\\\\\\__\/\\\__\//\\\____\/\\\________/\\\\\\\\\\__
      _\/\\\_____________\/\\\_\//\\///////___\/\\\___\/\\\____\/\\\_/\\___/\\\/////\\\__
       _\/\\\_____________\/\\\__\//\\\\\\\\\\_\/\\\___\/\\\____\//\\\\\___\//\\\\\\\\/\\_
        _\///______________\///____\//////////__\///____\///______\/////_____\////////\//__
         __/\\\_____________________________/\\\_____________________________________________
          _\/\\\____________________________\/\\\_____________________________________________
           _\/\\\____________________________\/\\\_____________________________________________
            _\/\\\______________/\\\\\\\\\____\/\\\_________/\\\\\\\\\\_________________________
             _\/\\\_____________\////////\\\___\/\\\\\\\\\__\/\\\//////__________________________
              _\/\\\_______________/\\\\\\\\\\__\/\\\////\\\_\/\\\\\\\\\\_________________________
               _\/\\\______________/\\\/////\\\__\/\\\__\/\\\_\////////\\\_________________________
                _\/\\\\\\\\\\\\\\\_\//\\\\\\\\/\\_\/\\\\\\\\\___/\\\\\\\\\\_________________________
                 _\///////////////___\////////\//__\/////////___\//////////__________________________
END
