require("telescope").setup {
	defaults = {
		preview = false
	}
}

-- Telescope keymaps
local telescopeBuiltin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescopeBuiltin.find_files)
vim.keymap.set("n", "<leader>fg", telescopeBuiltin.git_files)
vim.keymap.set("n", "<leader>F", telescopeBuiltin.live_grep)

