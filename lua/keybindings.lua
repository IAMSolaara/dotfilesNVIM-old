-- ┌─────────────────────────────────────────────────────────────────┐
-- │      __ __              ____  _           ___                   │
-- │     / //_/__  __  __   / __ )(_)___  ____/ (_)___  ____ ______  │
-- │    / ,< / _ \/ / / /  / __  / / __ \/ __  / / __ \/ __ `/ ___/  │
-- │   / /| /  __/ /_/ /  / /_/ / / / / / /_/ / / / / / /_/ (__  )   │
-- │  /_/ |_\___/\__, /  /_____/_/_/ /_/\__,_/_/_/ /_/\__, /____/    │
-- │            /____/                               /____/          │
-- │                                                                 │
-- └─────────────────────────────────────────────────────────────────┘

local utils = require('utils')

-- map space to leader --lorecast162
utils.map("", "<Space>", "<Leader>")
vim.g.mapleader = ' '

-- tab navigation binds --lorecast162
utils.map("n", "{", ":tabp<CR>")
utils.map("n", "}", ":tabn<CR>")

-- misc bindings
utils.map("n", "<Leader>qq", ":quitall<CR>")

-- bindings to move lines --lorecast162
utils.map("n", "<A-j>", ":m .+1<CR>==")
utils.map("n", "<A-Down>", ":m .+1<CR>==")
utils.map("n", "<A-k>", ":m .-2<CR>==")
utils.map("n", "<A-Up>", ":m .-2<CR>==")
utils.map("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
utils.map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi")
utils.map("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
utils.map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi")
utils.map("v", "<A-j>", ":m '>+1<CR>gv=gv")
utils.map("v", "<A-Down>", ":m '>+1<CR>gv=gv")
utils.map("v", "<A-k>", ":m '<-2<CR>gv=gv")
utils.map("v", "<A-Up>", ":m '<-2<CR>gv=gv")

-- disable suspend on Windows --lorecast162
if utils.get_os() == "Windows_NT" then 
	utils.map("n", "<C-Z>", "<Nop>")
	utils.map("i", "<C-Z>", "<Nop>")
	utils.map("v", "<C-Z>", "<Nop>")
end

-- bind for code actions --iamsolaara
vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, {noremap = true})
