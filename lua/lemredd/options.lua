-- Hide mode on bottommost part of screen
vim.opt.showmode = false

-- utf-8 byte sequence
vim.cmd("set encoding=utf-8")
vim.cmd("set fileencoding=utf-8")
vim.cmd("set termencoding=utf-8")

-- Use `LF` end of lines
vim.cmd("set ffs=unix,dos")

-- Show line numbers and relative number
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.hlsearch = false -- Disables highlights on search
vim.opt.incsearch = true -- Highlights search while typing (incrementing)

-- gui colors
vim.opt.termguicolors = true

-- indent wrapped lines
-- https://stackoverflow.com/questions/2828174/word-wrap-in-vim-preserving-indentation
vim.opt.breakindent = true
vim.opt.formatoptions = "l"
vim.opt.lbr = true

-- activates listchars
vim.opt.list = true
-- overrides for listchars
vim.opt.listchars = {
	space = '•',
	tab = ' ',
	trail = '~'
}

-- status column
-- this sets current line number and relative numbers together
vim.opt.statuscolumn = "%l %r"

-- Keeps `netrw` current directory and the browsing directory synced
vim.g.netrw_keepdir = 0
