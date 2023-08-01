vim.g.mapleader = " " -- easy to reach leader key
vim.keymap.set("n", "-", vim.cmd.Ex, { noremap = true }) -- need nvim 0.8+
vim.keymap.set("i", "ii", "<Esc>", { noremap = true }) -- need nvim 0.8+
