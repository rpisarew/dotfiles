local opt = vim.opt

vim.g.autoformat = false

opt.signcolumn = "no"
opt.colorcolumn = "91,111" -- 11 cols offset because of LazyVim statuscolumn
opt.fileencoding = "utf-8"
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.wrap = true
opt.updatetime = 300
opt.swapfile = false
