vim.g.mapleader = " "


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep curson at same row after J
vim.keymap.set("n", "J", "mzJ`z")
