-- `lsp-zero` configuration
local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	-- TS/JS servers
	"tsserver",
	"eslint",
	-- TS/JS Front-end framework servers
	"volar",
	"svelte",
	"astro",
	-- Miscellaneous NodeJS servers
	"prismals",

	-- Rust servers
	"rust_analyzer",

	-- Python
	-- NOTE: make sure to install `python3-pylsp*` packages (`apt install python3-pylsp`)
	"pylsp",

	-- Neovim servers
	"lua_ls"
})

-- Allow LSP (using `lua-language-server`) to recognize `vim` global
-- Straight from thePrimeagen"s `lsp.lua` (https://github.com/ThePrimeagen/init.lua/blob/249f3b14cc517202c80c6babd0f9ec548351ec71/after/plugin/lsp.lua#L10)
lsp.configure("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" }
			}
		}
	}
})

-- Fix for AstroJS
-- related links:
-- https://github.com/lemredd/my-neovim-config/issues/60
-- https://github.com/withastro/language-tools/issues/559#issuecomment-1576015074
lsp.configure("astro", {
	init_options = {
		typescript = {
			tsdk = vim.fs.normalize('node_modules/typescript/lib')
		}
	}
})

-- nvim-cmp configuration
local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = require("lsp-zero").cmp_action()
cmp.setup({
	mapping = {
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-k>"] = cmp.mapping.select_prev_item(cmp_select),
		["<C-j>"] = cmp.mapping.select_next_item(cmp_select),
		['<C-up>'] = cmp.mapping.scroll_docs(-4),
		['<C-down>'] = cmp.mapping.scroll_docs(4),
		["<Tab>"] = cmp.mapping.confirm({ select = true }),
	}
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.set_preferences({
	suggest_lsp_servers = false,
	sign_icons = {
		error = "E",
		warn = "W",
		hint = "H",
		info = "I"
	}
})


lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
end)

lsp.format_on_save({
	format_opts = {
		timeout_ms = 10000,
	},
	servers = {
		["lua_ls"] = { "lua" },
		["pylsp"] = { "python" }
	}
})
-- Format JavaScript code on save
local eslintAutocmdGroup = vim.api.nvim_create_augroup("EslintFormatOnSave", { clear = true })
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = {
		-- TS/JS
		"*.tsx", "*.ts",
		"*.jsx", "*.js",

		-- COMPONENT FRAMEWORKS
		"*.jsx", "*.tsx", -- REACT
		"*.vue", "*.astro", -- EVAN YOU
		"*.svelte"
	},
	command = "EslintFixAll",
	group = eslintAutocmdGroup
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = true
})
