local opt = vim.opt

opt.colorcolumn = "80,100"
opt.fileencoding = "utf-8"
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.wrap = true
