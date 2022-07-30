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

set nocompatible              " be iMproved, required
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

" ┌─────────────────────────────────────────────────────────────────┐
" │      __ __              ____  _           ___                   │
" │     / //_/__  __  __   / __ )(_)___  ____/ (_)___  ____ ______  │
" │    / ,< / _ \/ / / /  / __  / / __ \/ __  / / __ \/ __ `/ ___/  │
" │   / /| /  __/ /_/ /  / /_/ / / / / / /_/ / / / / / /_/ (__  )   │
" │  /_/ |_\___/\__, /  /_____/_/_/ /_/\__,_/_/_/ /_/\__, /____/    │
" │            /____/                               /____/          │
" │                                                                 │
" └─────────────────────────────────────────────────────────────────┘

" tab navigation binds --lorecast162
nnoremap { :tabp<CR>
nnoremap } :tabn<CR>

" misc bindings
nnoremap <Leader>qq :quitall<CR>

" bindings to move lines --lorecast162
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <A-Up> :m .-2<CR>==

inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-Down> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
inoremap <A-Up> <Esc>:m .-2<CR>==gi

vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
vnoremap <A-Up> :m '<-2<CR>gv=gv

" map space to leader --lorecast162
map <Space> <Leader>

" ┌───────────────────────────────────────────────────────────────────┐
" │      __  ____              _____      __  __  _                   │
" │     /  |/  (_)_________   / ___/___  / /_/ /_(_)___  ____ ______  │
" │    / /|_/ / / ___/ ___/   \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/  │
" │   / /  / / (__  ) /__    ___/ /  __/ /_/ /_/ / / / / /_/ (__  )   │
" │  /_/  /_/_/____/\___/   /____/\___/\__/\__/_/_/ /_/\__, /____/    │
" │                                                   /____/          │
" │                                                                   │
" └───────────────────────────────────────────────────────────────────┘

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

" make terminal use true color --lorecast162
set termguicolors

" enable dracula theme --lorecast162
color dracula

" get rid of the banner in netrw --lorecast162
let g:netrw_banner = 0

" fix syntax highlighting getting out of sync on big JS/JSX/TS/TSX files --lorecast162
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" ┌────────────────────────────────────────────────────────────────────────────┐
" │      ____  __            _          _____      __  __  _                   │
" │     / __ \/ /_  ______ _(_)___     / ___/___  / /_/ /_(_)___  ____ ______  │
" │    / /_/ / / / / / __ `/ / __ \    \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/  │
" │   / ____/ / /_/ / /_/ / / / / /   ___/ /  __/ /_/ /_/ / / / / /_/ (__  )   │
" │  /_/   /_/\__,_/\__, /_/_/ /_/   /____/\___/\__/\__/_/_/ /_/\__, /____/    │
" │                /____/                                      /____/          │
" │                                                                            │
" └────────────────────────────────────────────────────────────────────────────┘

" colorizer settings --lorecast162
lua << EOF
require 'colorizer'.setup {
	'*';
	css = { rgb_fn = true; };
	html = { rgb_fn = true; };
	}
EOF

" airline settings --lorecast162
let g:airline_theme = 'dracula'
let g:airline_powerline_fonts = 1
let g:airline#extensions#bufferline#enabled = 1

" CoC settings --lorecast162
let g:coc_global_extensions = ['coc-tsserver', 'coc-rust-analyzer', 'coc-emmet', 'coc-clangd', 'coc-pyright', 'coc-json', 'coc-go', 'coc-java', 'coc-flutter', 'coc-html']

" use prettier if it's installed --lorecast162
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" GitGutter settings --lorecast162
let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
let g:airline#extensions#hunks#enabled = 1

highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red

" dashboard-nvim settings --lorecast162
execute printf('highlight DashboardShortCut guifg=%s', g:dracula#palette.yellow[0])
execute printf('highlight DashboardHeader guifg=%s', g:dracula#palette.green[0])
execute printf('highlight DashboardCenter guifg=%s', g:dracula#palette.pink[0])
execute printf('highlight DashboardFooter guifg=%s', g:dracula#palette.comment[0])
lua << EOF
local db = require('dashboard')

db.custom_header = {

' ╭─────────────────────────────────────────────────────────────────────────────────────────────────────────────╮ ',
' │                                                                                                             │╮',
' │    __/\\\\\\\\____________/\\\\\\\\___________________________________________________________                      ││',
' │     _\\/\\\\\\\\\\\\________/\\\\\\\\\\\\___________________________________________________________                     ││',
' │      _\\/\\\\\\//\\\\\\____/\\\\\\//\\\\\\__________________________________/\\\\\\_____________________                    ││',
' │       _\\/\\\\\\\\///\\\\\\/\\\\\\/_\\/\\\\\\_____/\\\\\\\\\\\\\\\\___/\\\\/\\\\\\\\\\\\____/\\\\\\\\\\\\\\\\\\\\\\__/\\\\\\\\\\\\\\\\\\____                   ││',
' │        _\\/\\\\\\__\\///\\\\\\/___\\/\\\\\\___/\\\\\\/////\\\\\\_\\/\\\\\\////\\\\\\__\\////\\\\\\////__\\////////\\\\\\___                  ││',
' │         _\\/\\\\\\____\\///_____\\/\\\\\\__/\\\\\\\\\\\\\\\\\\\\\\__\\/\\\\\\__\\//\\\\\\____\\/\\\\\\________/\\\\\\\\\\\\\\\\\\\\__                 ││',
' │          _\\/\\\\\\_____________\\/\\\\\\_\\//\\\\///////___\\/\\\\\\___\\/\\\\\\____\\/\\\\\\_/\\\\___/\\\\\\/////\\\\\\__                ││',
' │           _\\/\\\\\\_____________\\/\\\\\\__\\//\\\\\\\\\\\\\\\\\\\\_\\/\\\\\\___\\/\\\\\\____\\//\\\\\\\\\\___\\//\\\\\\\\\\\\\\\\/\\\\_               ││',
' │            _\\///______________\\///____\\//////////__\\///____\\///______\\/////_____\\////////\\//__              ││',
' │             __/\\\\\\_____________________________/\\\\\\_____________________________________________            ││',
' │              _\\/\\\\\\____________________________\\/\\\\\\_____________________________________________           ││',
' │               _\\/\\\\\\____________________________\\/\\\\\\_____________________________________________          ││',
' │                _\\/\\\\\\______________/\\\\\\\\\\\\\\\\\\____\\/\\\\\\_________/\\\\\\\\\\\\\\\\\\\\_________________________         ││',
' │                 _\\/\\\\\\_____________\\////////\\\\\\___\\/\\\\\\\\\\\\\\\\\\__\\/\\\\\\//////__________________________        ││',
' │                  _\\/\\\\\\_______________/\\\\\\\\\\\\\\\\\\\\__\\/\\\\\\////\\\\\\_\\/\\\\\\\\\\\\\\\\\\\\_________________________       ││',
' │                   _\\/\\\\\\______________/\\\\\\/////\\\\\\__\\/\\\\\\__\\/\\\\\\_\\////////\\\\\\_________________________      ││',
' │                    _\\/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\_\\//\\\\\\\\\\\\\\\\/\\\\_\\/\\\\\\\\\\\\\\\\\\___/\\\\\\\\\\\\\\\\\\\\_________________________     ││',
' │                     _\\///////////////___\\////////\\//__\\/////////___\\//////////__________________________    ││',
' │                                                                                                             ││',
' ╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────╯│',
'  ╰─────────────────────────────────────────────────────────────────────────────────────────────────────────────╯',
}
db.custom_center = {
	{
		icon = ' ',
		desc = 'New file                              ',
		shortcut = 'SPC c n',
		action = 'DashboardNewFile'
	},
	{
		icon = ' ',
		desc = 'Recently opened files                 ',
		shortcut = 'SPC f h',
		action =  'Telescope oldfiles'
	},
	{
			icon = ' ',
			desc = 'Open last session                     ',
			shortcut = 'SPC s l',
			action = 'SessionLoad'
			},
	{
		icon = ' ',
		desc = 'Find file                             ',
		shortcut = 'SPC f f',
		action = 'Telescope find_files find_command=rg,--hidden,--files'
	},
	{
		icon = ' ',
		desc = 'Find word                             ',
		shortcut = 'SPC f a',
		action = 'Telescope live_grep'
	},
	{
		icon = ' ',
		desc = 'Exit                                  ',
		shortcut = 'SPC q q',
		action = 'exit'
	},
}
EOF


" NERDTree settings --lorecast162
nnoremap <silent> <Leader>nt :NERDTreeToggle<CR>
let g:NERDTreeGitStatusUseNerdFonts = 1

" emmet settings --lorecast162
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

let g:user_emmet_mode='inv'

let g:user_emmet_settings = {
			\  'variables': {'lang': 'ja'},
			\  'html': {
				\    'default_attributes': {
					\      'option': {'value': v:null},
					\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
					\    },
					\    'snippets': {
						\     'html:5': "<!DOCTYPE html>\n"
						\              ."<html lang=\"${lang}\">\n"
						\              ."<head>\n"
						\              ."\t<meta charset=\"${charset}\">\n"
						\              ."\t<title></title>\n"
						\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
						\              ."</head>\n"
						\              ."<body>\n\t${child}|\n</body>\n"
						\              ."</html>",
						\    },
						\  },
						\ }

" Vista settings --lorecast162
let g:vista_default_executive = "coc"

" ┌────────────────────────────────────────────────────────────────────────────────────────────────┐
" │      ____  __            _          __ __              ____  _           ___                   │
" │     / __ \/ /_  ______ _(_)___     / //_/__  __  __   / __ )(_)___  ____/ (_)___  ____ ______  │
" │    / /_/ / / / / / __ `/ / __ \   / ,< / _ \/ / / /  / __  / / __ \/ __  / / __ \/ __ `/ ___/  │
" │   / ____/ / /_/ / /_/ / / / / /  / /| /  __/ /_/ /  / /_/ / / / / / /_/ / / / / / /_/ (__  )   │
" │  /_/   /_/\__,_/\__, /_/_/ /_/  /_/ |_\___/\__, /  /_____/_/_/ /_/\__,_/_/_/ /_/\__, /____/    │
" │                /____/                     /____/                               /____/          │
" │                                                                                                │
" └────────────────────────────────────────────────────────────────────────────────────────────────┘

" GitGutter binds --lorecast162
nnoremap <Leader>gph :GitGutterPrevHunk<CR>
nnoremap <Leader>gnh :GitGutterNextHunk<CR>
nnoremap <Leader>gsh :GitGutterStageHunk<CR>
nnoremap <Leader>guh :GitGutterUndoHunk<CR>

" fugitive binds --lorecast162
nnoremap <Leader>gc :Git commit<CR>

" Telescope binds --lorecast162
nnoremap <silent> <Leader>ff :Telescope find_files<CR>
nnoremap <silent> <Leader>fh :Telescope oldfiles<CR>

" dashboard-nvim binds --lorecast162
nnoremap <Leader>ss :<C-u>SessionSave<CR>
nnoremap <Leader>sl :<C-u>SessionLoad<CR>

" Vista binds --lorecast162
nnoremap <Leader>so :Vista!!<CR>

