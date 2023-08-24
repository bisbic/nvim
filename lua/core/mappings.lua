vim.g.mapleader = " " -- easy to reach leader key
vim.keymap.set("i", "ii", "<Esc>", { noremap = true }) -- need nvim 0.8+
-- netrw
vim.keymap.set("n", "-", vim.cmd.Ex, { noremap = true }) -- need nvim 0.8+
-- hop
vim.api.nvim_set_keymap("n", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
vim.api.nvim_set_keymap("n", "S", "<cmd>HopChar2BC<CR>", {noremap=false})
-- Markdown
vim.api.nvim_set_keymap("n", "m", "<cmd>MarkdownPreview<CR>", {noremap=false})
vim.api.nvim_set_keymap("n", "mn", "<cmd>MarkdownPreviewStop<CR>", {noremap=false})
