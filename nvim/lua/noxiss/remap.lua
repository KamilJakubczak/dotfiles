vim.g.mapleader = " "


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep curson at same row after J
vim.keymap.set("n", "J", "mzJ`z")


-- Keep coursour in the middle of screen when Ctrl+d
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep ciursor in the middle of screen when search
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- Paste and keep buffered word
vim.keymap.set("x","<leader>p", "\"_dP")


-- Yank and delete into clipboard
vim.keymap.set("n", "<leader>y","\"+y")
vim.keymap.set("v", "<leader>y","\"+y")
vim.keymap.set("n", "<leader>Y","\"+Y")


vim.keymap.set("n", "<leader>d","\"_d")
vim.keymap.set("v", "<leader>d","\"_d")

-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- Replace all words shortcut
vim.keymap.set("n", "<leader>ss", [[:%s///g<Left><Left><Left>]])


-- Fast end line inserters in inset mode
vim.keymap.set("i","AA", "<ESC>A")
vim.keymap.set("i",";<cr>", "<ESC>A;<cr>")
vim.keymap.set("i",":<cr>", "<ESC>A:<cr>")
vim.keymap.set("i","}<cr>", "<ESC>A}<cr>")
vim.keymap.set("i",")<cr>", "<ESC>A)<cr>")
vim.keymap.set("i",">>", "<Right>")

-- Split navigations  
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")

vim.keymap.set("n", "<M-j>", ":bp<cr>", {desc="Previous buffer"})--Previous buffer
vim.keymap.set("n", "<M-k>", ":bn<cr>")
vim.keymap.set("n", "<M-d>", ":bd<cr>")


-- Nvim tree remaps
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle <cr>")

-- Nvim commetn
vim.keymap.set("n", "<C-_>", ":CommentToggle <cr>") -- <C-_> workaround for <C-/> on linux

-- DAP debugging short cuts

vim.keymap.set("n", "<leader>dm", ":lua require('dapui').toggle()<CR>" )
vim.keymap.set("n", "<leader>dp", ":lua require('dap').toggle_breakpoint()<CR>" )
vim.keymap.set("n", "<leader>dr", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<Leader>dov", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<Leader>di", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<Leader>dou", ":lua require('dap').step_out()<CR>") 

local wk = require("which-key")
local mappings = {
    q = {":q", "Quit"}
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
