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
vim.keymap.set("", "<Space>", "<Leader>", {noremap = true})
vim.g.mapleader = ' '

-- tab navigation binds --lorecast162
vim.keymap.set("n", "{", ":tabp<CR>", {noremap = true})
vim.keymap.set("n", "}", ":tabn<CR>", {noremap = true})

-- misc bindings
vim.keymap.set("n", "<Leader>qq", ":quitall<CR>", {noremap = true})

-- bindings to move lines --lorecast162
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", {noremap = true})
vim.keymap.set("n", "<A-Down>", ":m .+1<CR>==", {noremap = true})
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", {noremap = true})
vim.keymap.set("n", "<A-Up>", ":m .-2<CR>==", {noremap = true})

vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi", {noremap = true})
vim.keymap.set("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", {noremap = true})
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi", {noremap = true})
vim.keymap.set("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", {noremap = true})

vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", {noremap = true})
vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", {noremap = true})
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", {noremap = true})
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", {noremap = true})

-- disable suspend on Windows --lorecast162
if utils.get_os() == "Windows_NT" then 
	vim.keymap.set({'n','v','i'}, "<C-Z>", "<Nop>", {noremap = true})
end

-- bind for code actions --iamsolaara
vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, {noremap = true})
