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

require('packer').startup(function(use)
	-- let packer manage packer
	use 'wbthomason/packer.nvim'

	-- general styling --lorecast162
	use {'powerline/powerline', as = "powerline"}

	use {'vim-airline/vim-airline', config = function()
		-- airline settings --lorecast162
		vim.g.airline_theme = 'dracula'
		vim.g.airline_powerline_fonts = true
		vim.g["airline#extensions#bufferline#enabled"] = true
		vim.g["airline#extensions#hunks#enabled"] = true
	end}
	use {'vim-airline/vim-airline-themes', requires = "vim-airline/vim-airline"}

	use {'dracula/vim', config = "vim.api.nvim_command([[colorscheme dracula]])"}

	use {'glepnir/dashboard-nvim', config = function()
		-- dashboard-nvim setup --lorecast162
		local utils = require('utils')
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
		utils.map("n", "<Space>ss", ":<C-u>SessionSave<CR>")
		utils.map("n", "<Space>sl", ":<C-u>SessionLoad<CR>")

		-- dashboard-nvim settings --lorecast162
		vim.api.nvim_command("highlight DashboardShortCut guifg=" .. vim.g["dracula#palette"].yellow[1])
		vim.api.nvim_command("highlight DashboardHeader guifg=" .. vim.g["dracula#palette"].green[1])
		vim.api.nvim_command("highlight DashboardCenter guifg=" .. vim.g["dracula#palette"].pink[1])
		vim.api.nvim_command("highlight DashboardFooter guifg=" .. vim.g["dracula#palette"].comment[1])

	end}

	use 'ryanoasis/vim-devicons'

	use {'norcalli/nvim-colorizer.lua', config = function()
		-- colorizer settings --lorecast162
		require 'colorizer'.setup {
			'*';
			css = { rgb_fn = true; };
			html = { rgb_fn = true; };
		}
	end}

	-- for programming languages --lorecast162
	use 'kovetskiy/sxhkd-vim'
	use 'udalov/kotlin-vim'
	use 'pangloss/vim-javascript'
	use 'MaxMEllon/vim-jsx-pretty'

	--	-- misc plugins --lorecast162
	--	use {'neoclide/coc.nvim', branch = 'release', config = function()
	--		local utils = require("utils")
	--		-- CoC settings --lorecast162
	--		vim.g.coc_global_extensions = {'coc-tsserver', 'coc-rust-analyzer', 'coc-emmet', 'coc-clangd', 'coc-pyright', 'coc-json', 'coc-go', 'coc-java', 'coc-flutter', 'coc-html', 'coc-lua'}
	--
	--		-- use prettier if it's installed --lorecast162
	--		if vim.fn.isdirectory('./node_modules') and vim.fn.isdirectory('./node_modules/prettier')
	--		then
	--			table.insert(vim.g.coc_global_extensions, "coc-prettier")
	--		end
	--		utils.map("i", "<cr>", "coc#pum#visible() ? coc#pum#confirm() : \"\\<CR>\"", {expr = true})
	--	end}

	use {'airblade/vim-gitgutter', config = function()
		local utils = require("utils")
		-- GitGutter settings --lorecast162
		vim.g.gitgutter_enabled = true
		vim.g.gitgutter_map_keys = false

		vim.api.nvim_command([[
		highlight GitGutterAdd guifg=#009900 ctermfg=Green
		highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
		highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
		]])

		-- GitGutter binds --lorecast162
		utils.map("n", "<Space>gph", ":GitGutterPrevHunk<CR>")
		utils.map("n", "<Space>gnh", ":GitGutterNextHunk<CR>")
		utils.map("n", "<Space>gsh", ":GitGutterStageHunk<CR>")
		utils.map("n", "<Space>guh", ":GitGutterUndoHunk<CR>")
	end}

	use {'nvim-telescope/telescope.nvim', config = function()
		local utils = require("utils")
		-- Telescope binds --lorecast162
		utils.map("n", "<Space>ff", ":Telescope find_files<CR>", {silent = true})
		utils.map("n", "<Space>fh", ":Telescope oldfiles<CR>", {silent = true})
	end}
	use 'nvim-telescope/telescope-fzf-native.nvim'

	use 'nvim-lua/plenary.nvim'

	use {'preservim/nerdtree', config = function()
		local utils = require("utils")
		-- NERDTree settings --lorecast162
		utils.map("n", "<Space>nt", ":NERDTreeToggle<CR>", {silent = true})
		vim.g.NERDTreeGitStatusUseNerdFonts = true
	end}
	use {'Xuyuanp/nerdtree-git-plugin', requires = "preservim/nerdtree"}

	use 'tiagofumo/vim-nerdtree-syntax-highlight'
	use 'PhilRunninger/nerdtree-visual-selection'
	use {'tpope/vim-fugitive', config = function()
		local utils = require("utils")
		-- fugitive binds --lorecast162
		utils.map("n", "<Space>gc", ":Git commit<CR>")
	end}

	use {'mattn/emmet-vim', config = function ()
		-- emmet settings --lorecast162
		vim.g.user_emmet_install_global = false
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "html,css",
			command = "EmmetInstall"
		})

		vim.g.user_emmet_mode='inv'

		vim.g.emmet_html5 = true

	end}

	use {'liuchengxu/vista.vim', config = function()
		local utils = require("utils")
		-- Vista settings --lorecast162
		vim.g.vista_default_executive = "coc"

		-- Vista binds --lorecast162
		utils.map("n", "<Space>so", ":Vista!!<CR>")
	end}

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/vim-vsnip-integ'
	use 'hrsh7th/vim-vsnip'

	use {'williamboman/mason.nvim', after = 'nvim-lspconfig', config = function()
	end}

	use {'williamboman/mason-lspconfig.nvim', after = 'mason.nvim', config = function()
	end}

	use {'hrsh7th/nvim-cmp', after = 'mason-lspconfig.nvim', config = function()
		-- Set up nvim-cmp.
		local cmp = require'cmp'

		cmp.setup({
			snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
					-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
					-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
					-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
				end,
			},
			window = {
				-- completion = cmp.config.window.bordered(),
				-- documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				['<C-b>'] = cmp.mapping.scroll_docs(-4),
				['<C-f>'] = cmp.mapping.scroll_docs(4),
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-e>'] = cmp.mapping.abort(),
				['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'vsnip' }, -- For vsnip users.
				-- { name = 'luasnip' }, -- For luasnip users.
				-- { name = 'ultisnips' }, -- For ultisnips users.
				-- { name = 'snippy' }, -- For snippy users.
			}, {
				{ name = 'buffer' },
			})
		})

		-- Set configuration for specific filetype.
		cmp.setup.filetype('gitcommit', {
			sources = cmp.config.sources({
				{ name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
			}, {
				{ name = 'buffer' },
			})
		})

		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' }
			}
		})

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' }
			}, {
				{ name = 'cmdline' }
			})
		})

		-- Set up lspconfig.

		require("mason").setup()
		require("mason-lspconfig").setup()

    require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
			local capabilities = require('cmp_nvim_lsp').default_capabilities()
            require("lspconfig")[server_name].setup {
				capabilities = default_capabilities
			}
        end,
    }


	end}

	use 'fidian/hexmode'

end)
