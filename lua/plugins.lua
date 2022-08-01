 -- ┌────────────────────────────────────────────────────────────────────────────┐
 -- │      ____  __            _          _____      __  __  _                   │
 -- │     / __ \/ /_  ______ _(_)___     / ___/___  / /_/ /_(_)___  ____ ______  │
 -- │    / /_/ / / / / / __ `/ / __ \    \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/  │
 -- │   / ____/ / /_/ / /_/ / / / / /   ___/ /  __/ /_/ /_/ / / / / /_/ (__  )   │
 -- │  /_/   /_/\__,_/\__, /_/_/ /_/   /____/\___/\__/\__/_/_/ /_/\__, /____/    │
 -- │                /____/                                      /____/          │
 -- │                                                                            │
 -- └────────────────────────────────────────────────────────────────────────────┘

local utils = require("utils")

 -- colorizer settings --lorecast162
require 'colorizer'.setup {
	'*';
	css = { rgb_fn = true; };
	html = { rgb_fn = true; };
	}

 -- airline settings --lorecast162
vim.g.airline_theme = 'dracula'
vim.g.airline_powerline_fonts = true
vim.g["airline#extensions#bufferline#enabled"] = true
vim.g["airline#extensions#hunks#enabled"] = true

-- CoC settings --lorecast162
vim.g.coc_global_extensions = {'coc-tsserver', 'coc-rust-analyzer', 'coc-emmet', 'coc-clangd', 'coc-pyright', 'coc-json', 'coc-go', 'coc-java', 'coc-flutter', 'coc-html', 'coc-lua'}

-- use prettier if it's installed --lorecast162
if vim.fn.isdirectory('./node_modules') and vim.fn.isdirectory('./node_modules/prettier')
then
	table.insert(vim.g.coc_global_extensions, "coc-prettier")
end
utils.map("i", "<cr>", "coc#pum#visible() ? coc#pum#confirm() : \"\\<CR>\"", {expr = true})

 -- GitGutter settings --lorecast162
vim.g.gitgutter_enabled = true
vim.g.gitgutter_map_keys = false

vim.api.nvim_command([[
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
]])

 -- GitGutter binds --lorecast162
utils.map("n", "<Leader>gph", ":GitGutterPrevHunk<CR>")
utils.map("n", "<Leader>gnh", ":GitGutterNextHunk<CR>")
utils.map("n", "<Leader>gsh", ":GitGutterStageHunk<CR>")
utils.map("n", "<Leader>guh", ":GitGutterUndoHunk<CR>")

 -- dashboard-nvim settings --lorecast162
vim.api.nvim_command(string.format([[
highlight DashboardShortCut guifg=%s
highlight DashboardHeader guifg=%s
highlight DashboardCenter guifg=%s
highlight DashboardFooter guifg=%s
]], vim.g["dracula#palette"].yellow[1]
  , vim.g["dracula#palette"].green[1]
  , vim.g["dracula#palette"].pink[1]
  , vim.g["dracula#palette"].comment[1]
))

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

 -- dashboard-nvim binds --lorecast162
utils.map("n", "<Leader>ss", ":<C-u>SessionSave<CR>")
utils.map("n", "<Leader>sl", ":<C-u>SessionLoad<CR>")

 -- NERDTree settings --lorecast162
utils.map("n", "<Leader>nt", ":NERDTreeToggle<CR>", {silent = true})
vim.g.NERDTreeGitStatusUseNerdFonts = true

 -- emmet settings --lorecast162
vim.g.user_emmet_install_global = false
vim.api.nvim_create_autocmd("FileType", {
	pattern = "html,css",
	command = "EmmetInstall"
})

vim.g.user_emmet_mode='inv'

vim.g.emmet_html5 = true

 -- Vista settings --lorecast162
vim.g.vista_default_executive = "coc"

 -- Vista binds --lorecast162
utils.map("n", "<Leader>so", ":Vista!!<CR>")

 -- fugitive binds --lorecast162
utils.map("n", "<Leader>gc", ":Git commit<CR>")

 -- Telescope binds --lorecast162
utils.map("n", "<Leader>ff", ":Telescope find_files<CR>", {silent = true})
utils.map("n", "<Leader>fh", ":Telescope oldfiles<CR>", {silent = true})
