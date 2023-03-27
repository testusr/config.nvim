vim.g.mapleader= " " -- the leader key (default backspace) unlocks a set of keys that do not clash with the vim custom keymap

local keymap = vim.keymap -- for conciseness

-- general keymapes

keymap.set("i", "jk", "<ESC>") -- "i" -> mapping for insermode / jk is the same as <ESC> which exits the insert mode

keymap.set("n", "<leader>nh", ":nohl<CR>") -- "n" -> in normalmode / <leader>nh - no highlight => clear search highlights

keymap.set("n", "<leader>+", "<C-a>") -- increase number
keymap.set("n", "<leader>-", "<C-x>") -- decrease number
 
-- split windows 
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically 
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally  
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equals size  
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window 

-- tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab 
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab 
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab 
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab 

-- plugin keymaps 
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- maximiaze and unmaximize splits 

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- telescope 
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
