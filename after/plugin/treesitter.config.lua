require 'nvim-treesitter.configs'.setup {
	-- A list of parser names, or "all" (the five listed parsers under `-- Neovim` should always be installed)
	ensure_installed = {
		-- The crappiest webdev stack
		"javascript",
		"typescript",
		"vue",
		"svelte",
		"astro",
		"css",
		"scss",
		"html",
		"tsx",
		"prisma",

		-- Neovim
		"c",
		"lua",
		"vim",
		"vimdoc",
		"query",

		-- Rust!
		"rust"
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	highlight = {
		-- set to `false` to disable extension
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
}

-- set fold method
-- https://neovim.io/doc/user/fold.html#fold-methods
vim.opt.foldmethod = "indent"
vim.opt.foldexpr = "nvim_treesitter#indent()"

-- set highlight for fold previews
vim.cmd.highlight({ "Folded", "guifg=#575D6A" })

-- automate opening of all folded code blocks for each buffer opened
-- https://www.jmaguire.tech/posts/treesitter_folding/
-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands
local autocmdGroup = vim.api.nvim_create_augroup("FoldableCodeBlocks", { clear = true })
vim.api.nvim_create_autocmd({ "BufReadPost", "BufEnter" }, {
	command = "normal zR",
	group = autocmdGroup
})
