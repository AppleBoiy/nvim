local opt = vim.opt

-- line
opt.relativenumber = true
opt.number = true

-- tabs, indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-") -- (d-w) delete word
