" -----------------
" |  INIT CONFIG  |
" -----------------

set nocompatible              " be iMproved, required
" configure config path based on OS --lorecast162
if has('win32')
	let configPath = $HOME . "\\AppData\\Local\\nvim"
else
	let configPath = $HOME . "/.config/nvim"
endif

filetype off                  " required

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
Plugin 'flazz/vim-colorschemes'
Plugin 'dracula/vim'
Plugin 'glepnir/dashboard-nvim'
Plugin 'ryanoasis/vim-devicons'

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

" ------------------
" |  MISC CONFIGS  |
" ------------------

" set tab stuff --lorecast162
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

" make sure splits happen below, not above --lorecast162
set splitbelow

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

" tab navigation binds --lorecast162
nnoremap { :tabp<CR>
nnoremap } :tabn<CR>

" misc bindings
nnoremap <Space>qq :quit<CR>

" bindings to move lines --lorecast162
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" --------------------
" |  PLUGIN CONFIGS  |
" --------------------

" airline settings --lorecast162
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1

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

nnoremap <Space>gph :GitGutterPrevHunk<CR>
nnoremap <Space>gnh :GitGutterNextHunk<CR>
nnoremap <Space>gsh :GitGutterStageHunk<CR>
nnoremap <Space>guh :GitGutterUndoHunk<CR>

highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

" dashboard-nvim settings --lorecast162
if has('win32')
	let g:dashboard_preview_command = "type"
	let g:dashboard_preview_file = configPath . "\\logo"
else
	let g:dashboard_preview_command = "cat"
	let g:dashboard_preview_file = configPath . "/logo"
endif
let g:dashboard_preview_file_height = 18
let g:dashboard_preview_file_width = 101

let g:dashboard_default_executive = 'telescope'

let g:dashboard_custom_shortcut_icon = {
			\ 'new_file':     ' ',
			\ 'last_session': ' ',
			\ 'find_history': ' ',
			\ 'find_file':    ' ',
			\ 'find_word':    ' ',
			\ 'book_marks':   ' ',
			\ 'exit':         ' ',
	\ }

let g:dashboard_custom_shortcut = {
			\ 'new_file':     'SPC c n',
			\ 'last_session': 'SPC s l',
			\ 'find_history': 'SPC f h',
			\ 'find_file':    'SPC f f',
			\ 'find_word':    'SPC f a',
			\ 'book_marks':   'SPC f b',
			\ 'exit':         'SPC q q',
	\ }

let g:dashboard_custom_section = {
    \ 'a'             :{
          \ 'description': [g:dashboard_custom_shortcut_icon['new_file'].'New file                              '.g:dashboard_custom_shortcut['new_file']],
          \ 'command':function('dashboard#handler#new_file')},
    \ 'b'         :{
          \ 'description': [g:dashboard_custom_shortcut_icon['last_session'].'Open last session                     '.g:dashboard_custom_shortcut['last_session']],
          \ 'command':function('dashboard#handler#last_session')},
    \ 'c'         :{
          \ 'description': [g:dashboard_custom_shortcut_icon['find_history'].'Recently opened files                 '.g:dashboard_custom_shortcut['find_history']],
          \ 'command':function('dashboard#handler#find_history')},
    \ 'd'            :{
          \ 'description': [g:dashboard_custom_shortcut_icon['find_file'].'Find file                             '.g:dashboard_custom_shortcut['find_file']],
          \ 'command':function('dashboard#handler#find_file')},
    \ 'e'            :{
          \ 'description': [g:dashboard_custom_shortcut_icon['find_word'].'Find word                             '.g:dashboard_custom_shortcut['find_word']],
          \ 'command': function('dashboard#handler#find_word')},
    \ 'f'           :{
          \ 'description': [g:dashboard_custom_shortcut_icon['book_marks'].'Jump to bookmarks                     '.g:dashboard_custom_shortcut['book_marks']],
          \ 'command':function('dashboard#handler#book_marks')},
    \ 'g'           :{
          \ 'description': [g:dashboard_custom_shortcut_icon['exit'].'Exit                                  '.g:dashboard_custom_shortcut['exit']],
          \ 'command':'quit'},
	\ }

" Telescope settings --lorecast162
nnoremap <silent> <Space>ff :Telescope find_files<CR>

" NERDTree settings --lorecast162
nnoremap <silent> <Space>nt :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts = 1
