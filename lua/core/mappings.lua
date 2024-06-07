vim.g.mapleader = " " -- easy to reach leader key
vim.keymap.set("i", "ii", "<Esc>", { noremap = true }) -- need nvim 0.8+
-- netrw
vim.keymap.set("n", "-", vim.cmd.Explore, { noremap = true }) -- need nvim 0.8+
-- hop
vim.api.nvim_set_keymap("n", "s", "<cmd>HopChar2AC<CR>", {noremap=false})
vim.api.nvim_set_keymap("n", "S", "<cmd>HopChar2BC<CR>", {noremap=false})
-- Markdown
vim.api.nvim_set_keymap("n", "m", "<cmd>MarkdownPreview<CR>", {noremap=false})
vim.api.nvim_set_keymap("n", "mn", "<cmd>MarkdownPreviewStop<CR>", {noremap=false})
-- Bpuffers
vim.keymap.set("n", "<leader>j", "<cmd>bprevious<CR>", {noremap=false})
vim.keymap.set("n", "<leader>k", "<cmd>bnext<CR>", {noremap=false})
-- Panes navigation
vim.keymap.set("n", "c-h", ":wincmd h<CR>")
vim.keymap.set("n", "c-j", ":wincmd j<CR>")
vim.keymap.set("n", "c-k", ":wincmd k<CR>")
vim.keymap.set("n", "c-l", ":wincmd l<CR>")
