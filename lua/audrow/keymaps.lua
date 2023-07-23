vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- shift highlihted lines down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- shift highlihted lines up
vim.keymap.set("n", "<C-h>", "<C-w><C-h>") -- jump left one window
vim.keymap.set("n", "<C-l>", "<C-w><C-l>") -- jump right one window
vim.keymap.set("n", "<C-j>", "<C-w><C-j>") -- jump down one window
vim.keymap.set("n", "<C-k>", "<C-w><C-k>") -- jump up one window

vim.keymap.set("n", "J", "mzJ`z") -- keep in place when joining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- keep in place when scrolling
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- keep in place when scrolling
vim.keymap.set("n", "n", "nzz") -- keep in place when searching
vim.keymap.set("n", "N", "Nzz") -- keep in place when searching

vim.keymap.set("x", "<leader>p", "\"_dP") -- paste without yanking
vim.keymap.set("",  "<C-y>", "\"+y") -- copy to system clipboard
vim.keymap.set("",  "<C-Y>", "\"+Y") -- copy to system clipboard

vim.keymap.set("n", "<leader>d", "\"_d") -- delete without yanking
vim.keymap.set("v", "<leader>d", "\"_d") -- delete without yanking

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- keep in place when searching
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- keep in place when searching
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- keep in place when searching
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- keep in place when searching

vim.keymap.set("n", "gt", ":bnext<CR>") -- go to the next buffer
vim.keymap.set("n", "gT", ":bprev<CR>") -- go to the previous buffer

