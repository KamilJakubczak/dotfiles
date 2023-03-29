vim.g.mapleader = " "


vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)



-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "Replace current word"})
-- Replace all words shortcut
vim.keymap.set("n", "<leader>ss", [[:%s///g<Left><Left><Left>]], {desc = "Replace all"})

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

-- Split navigations  
vim.keymap.set("n", "<C-J>", "<C-W><C-J>", {desc="Goto lower window"})
vim.keymap.set("n", "<C-K>", "<C-W><C-K>", {desc="Goto upper window"})
vim.keymap.set("n", "<C-L>", "<C-W><C-L>", {desc="Goto right window"})
vim.keymap.set("n", "<C-H>", "<C-W><C-H>", {desc="Goto left window"})

vim.keymap.set("n", "<M-j>", ":bp<cr>", {desc="Previous buffer"})
vim.keymap.set("n", "<M-k>", ":bn<cr>", {desc="Next buffer"})
vim.keymap.set("n", "<M-d>", ":bd<cr>", {desc="Delete buffer"})

-- Visial mode
--- Move highlighted text
local text_movements = {
    ["J"] = {":m '>+1<CR>gv=gv", "Move highlighted down"},
    ["K"] = {":m '<-2<CR>gv=gv", "Move highlighted up"},
}

-- Fast end line inserters in inset mode
local fast_inserts = {
 
    ["AA"] =  {"<ESC>A", "Go to end of line"},
    [";<cr>"] = {"<ESC>A;<cr>", "Add ; to end of line"},
    [":<cr>"] = {"<ESC>A:<cr>", "Add  to the end of line"},
    ["}<cr>"] = {"<ESC>A}<cr>", "Add  to the end of line"},
    [")<cr>"] = {"<ESC>A)<cr>", "Add  to the end of line"},
}


-- DAP debugging short cuts
local debugging = {
    d = {
        name = "+Debug",
	m = {":lua require('dapui').toggle()<CR>", "Debbuging GUI" },
        p = {":lua require('dap').toggle_breakpoint()<CR>", "Toggle break point"},
        r = {":lua require('dap').continue()<CR>", "Run debugging"},
        i = {":lua require('dap').step_into()<CR>", "Step into"},
        o = {
            v = {":lua require('dap').step_over()<CR>", "Step over"},
            u = {":lua require('dap').step_out()<CR>", "Step out"},
        }
    }
}

local nerdtree = {
    n = {
        t = {":NvimTreeToggle <cr>", "NvimTreeToggle" },
    }
}

local wk = require("which-key")
local leader = {prefix = '<leader>'}
local mode_i = {mode='i'}
local mode_v = {mode='v'}

wk.register(debugging, leader)
wk.register(nerdtree, leader)
wk.register(search_and_replace, leader)
wk.register(comments)
wk.register(window_nav)
wk.register(buffer_nav)
wk.register(fast_inserts, mode_i)
wk.register(text_movements, mode_v)




