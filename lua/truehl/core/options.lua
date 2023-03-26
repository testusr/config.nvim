local opt = vim.opt -- for conciseness

-- line numbers 
opt.relativenumber = true -- show the relativ numbers to the cursors and only the cursor line shows the total ln
opt.number = true

-- tabs & indentation 
opt.tabstop = 2 
opt.shiftwidth = 2 
opt.expandtab = true 
opt.autoindent = true

-- line wrapping 
opt.wrap = false

-- search settings
opt.ignorecase = true  -- when search do search case insensitive by default
opt.smartcase = true -- when there is a capital mix do make the search case sensitive

-- cursor line 
opt.cursorline = true  -- draws a line under the whole line where the cursor is

-- appearance 
opt.termguicolors = true 
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace 
opt.backspace = "indent,eol,start" -- makes backspace work propely

-- clipboard
opt.clipboard:append("unnamedplus") -- force nvim to use the system keyboard !!

-- split windows 
opt.splitright = true -- if i split vertically split to the right 
opt.splitbelow = true -- if i split horizontally split to below

opt.iskeyword:append("-") -- when maring or jumping konsider this to be part of the work
