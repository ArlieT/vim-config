-- Yank commit message head and body before write quitting
-- https://neovim.io/doc/user/lua-guide.html#lua-guide-autocommands
local autocmdGroup = vim.api.nvim_create_augroup("YankCommitMsgBeforeQuit", { clear = true })
vim.api.nvim_create_autocmd({ "BufWrite" }, {
	pattern = "COMMIT_EDITMSG",
	command = "goto | yank 3",
	group = autocmdGroup
})
