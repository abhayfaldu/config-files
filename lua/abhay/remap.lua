vim.g.mapleader = " "

local keymap = vim.keymap --for consiseness

-- keymaps by theprimeagen
keymap.set("n", "<leader>pv", vim.cmd.Ex) -- to get out of file and go to explorer

keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- to move selected code 1 line down with proper indentation
keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- to move selected code 1 line up with proper indentation

keymap.set("n", "J", "mzJ`z") -- I don't know
keymap.set("n", "<C-d>", "<C-d>zz") -- I don't know
keymap.set("n", "<C-u>", "<C-u>zz") -- I don't know
keymap.set("n", "n", "nzzzv") -- I don't know
keymap.set("n", "N", "Nzzzv") -- I don't know

keymap.set("n", "<leader>vwm", function() -- I don't know
    require("vim-with-me").StartVimWithMe()
end)
keymap.set("n", "<leader>svwm", function() -- I don't know
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]]) -- I don't know

-- next greatest remap ever : asbjornHaland
keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- I don't know
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set({"n", "v"}, "<leader>d", [["_d]]) -- I don't know

-- This is going to get me cancelled
keymap.set("i", "<C-c>", "<Esc>") -- ctrl+c => Esc

keymap.set("n", "Q", "<nop>") -- I don't know
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- I don't know
keymap.set("n", "<leader>f", vim.lsp.buf.format) -- maybe for formating the code 

keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") -- I don't know
keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") -- I don't know
keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") -- I don't know
keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") -- I don't know

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) -- I don't know
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) -- I don't know

keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>"); -- I don't know
keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>"); -- I don't know

keymap.set("n", "<leader><leader>", function() -- I don't know
    vim.cmd("so")
end)

-- keymaps by the josean martinez
keymap.set("n", "<leader>nh", ":nohl<CR>") -- for removing selection of search

keymap.set("n", "x", '"_x') -- to deleate but without copy

keymap.set("n", "<leader>+", "<C-a>") -- incriment present number in line
keymap.set("n", "<leader>-", "<C-x>") -- decrement present nubmer in line  

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split windows

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
