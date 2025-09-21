local opt = vim.opt

vim.g.autoformat = false

opt.signcolumn = "no"
opt.colorcolumn = "80,100"
opt.fileencoding = "utf-8"
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.wrap = true
opt.updatetime = 300
opt.swapfile = false
