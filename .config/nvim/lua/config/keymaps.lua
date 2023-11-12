local keymap = vim.keymap.set

-- general
keymap("n", ";", ":", { nowait = true })
keymap("n", "<C-c>", "<cmd> %y+ <cr>") -- copy whole buffer

-- zoxide
keymap("n", "<leader>z", require("telescope").extensions.zoxide.list)

--lspsaga
keymap("n", "gh", "<cmd> Lspsaga finder <cr>")
