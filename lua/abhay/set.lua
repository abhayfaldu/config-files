local opt = vim.opt -- for consiseness

opt.guicursor = ""

-- line numbers
opt.number = true -- show relative line numbers
opt.relativenumber = true -- shows absolute line number on cursor line (when relative number is on)

opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.softtabstop = 2 -- 2 spaces for indent width
opt.shiftwidth = 2 -- expand tab to spaces
opt.expandtab = true -- copy indent from current line when starting new one

opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false -- disable line wrapping

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

-- search settings
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sen

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "100"

-- cursor line
opt.cursorline = true -- highlight the current cursor line
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- opt.iskeyword:append("-") -- consider string-string as whole word
