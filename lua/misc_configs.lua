 -- ┌───────────────────────────────────────────────────────────────────┐
 -- │      __  ____              _____      __  __  _                   │
 -- │     /  |/  (_)_________   / ___/___  / /_/ /_(_)___  ____ ______  │
 -- │    / /|_/ / / ___/ ___/   \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/  │
 -- │   / /  / / (__  ) /__    ___/ /  __/ /_/ /_/ / / / / /_/ (__  )   │
 -- │  /_/  /_/_/____/\___/   /____/\___/\__/\__/_/_/ /_/\__, /____/    │
 -- │                                                   /____/          │
 -- │                                                                   │
 -- └───────────────────────────────────────────────────────────────────┘

local utils = require('utils')

 -- fix syntax highlighting getting out of sync on big JS/JSX/TS/TSX files --lorecast162
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = "*.{js,jsx,ts,tsx}",
	command = ":syntax sync fromstart"
})

vim.api.nvim_create_autocmd("BufLeave", {
	pattern = "*.{js,jsx,ts,tsx}",
	command = ":syntax sync clear"
})

 -- avoid vim overriding terminal background --lorecast162
vim.api.nvim_create_autocmd("Colorscheme", {
	pattern = "*",
	command = [[
		highlight Normal ctermbg=NONE guibg=NONE
		highlight NonText ctermbg=NONE guibg=NONE
	]]
})

 -- set tab stuff --lorecast162
vim.opt.tabstop = 4
vim.opt.softtabstop = 0
vim.opt.expandtab = false
vim.opt.shiftwidth = 4

 -- turn search highlighting off because it sucks --lorecast162
vim.opt.hlsearch = false

 -- turn line wrapping off --lorecast162
vim.opt.wrap = false

 -- enable number lines --lorecast162
vim.opt.number = true

 -- enable mouse functionality in terminal --lorecast162
vim.opt.mouse = "a"

 -- turn on syntax highlighting --lorecast162
vim.syntax = true

 -- make sure splits happen below, not above --lorecast162
vim.opt.splitbelow = true

 -- make terminal use true color --lorecast162
vim.opt.termguicolors = true

 -- get rid of the banner in netrw --lorecast162
vim.g.netrw_banner = false

