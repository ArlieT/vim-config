-- Remap leader key
vim.g.mapleader = " "

-- Open this `keymaps.lua` file
vim.keymap.set("n", "<F2>key", ":e $nvimconfdir/lua/lemredd/keymaps.lua<cr>")
-- Open global `.gitconfig` file
vim.keymap.set("n", "<F2>git", ": e ~/.gitconfig<cr>")

-- Open a new tab
vim.keymap.set("n", "<leader>t", vim.cmd.tabnew)

-- list all buffers
vim.keymap.set("n", "<leader>ls", vim.cmd.buffers)
-- Cycle through buffer accordingly
vim.keymap.set("n", "<leader>bl", vim.cmd.bnext)
vim.keymap.set("n", "<leader>bh", vim.cmd.bprevious)
-- Retain current buffer
vim.keymap.set("n", "<leader>bo", ":%bd | e# | bd#<cr>")
-- Clear current buffer
vim.keymap.set("n", "<leader>bw", vim.cmd.bwipeout)
-- Clear all buffers
vim.keymap.set("n", "<leader>bW", ":%bw<cr>")

-- automatic midle

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
-- end automatic middle

-- Open netrw
vim.keymap.set("n", "<leader>fex", vim.cmd.Ex)

-- Substitute in a line
vim.keymap.set("n", "<leader>s", ":s//g<Left><Left>")
-- Substitute globally
vim.keymap.set("n", "<leader>S", ":%s//g<Left><Left>")
-- Substitute in a quickfix quickfix
vim.keymap.set("n", "<leader>H", ":cdo s//g<Left><Left>")

-- Autoclosing pair characters
vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", '"', '""<left>')
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", "`", "``<left>")
vim.keymap.set("i", "<", "<><left>")
vim.keymap.set("c", ":cap", "\\(\\)<Left><Left>")

-- Convenient command mode x-axis movements
vim.keymap.set("c", "<C-H>", "<Left>")
vim.keymap.set("c", "<C-L>", "<Right>")

-- Convenient line moving keymaps
-- https://github.com/ThePrimeagen/init.lua/blob/97c039bb88d8bbbcc9b1e3d0dc716a2ba202c6d2/lua/theprimeagen/remap.lua#L5C1-L6C45
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank selected to empty buffer
vim.keymap.set("v", "<leader>ny", ":y | new | 0put \"<cr>")
-- Delete and paste selected to empty buffer
vim.keymap.set("v", "<leader>nd", ":d | new | 0put \"<cr>")

-- Yank/paste keymaps
vim.keymap.set("x", "<leader>p", [["_dP]]) --https://github.com/ThePrimeagen/init.lua/blob/97c039bb88d8bbbcc9b1e3d0dc716a2ba202c6d2/lua/theprimeagen/remap.lua#L22
-- yank to system clipboard
-- https://github.com/ThePrimeagen/init.lua/blob/97c039bb88d8bbbcc9b1e3d0dc716a2ba202c6d2/lua/theprimeagen/remap.lua#L25C1-L25C4 (Originally from asbjornHaland)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
