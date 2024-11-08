--
-- COLORS for jellybeans--
--
--[[
vim.opt.termguicolors = true

function SetColor(color)
    color = color or "jellybeans" -- have a default value
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#330000" })
end

SetColor() -- run at startup
]]

--
-- COLORS for kanagawa
--
-- vim.cmd("colorscheme kanagawa-wave")
--
-- COLORS for catppuccin
--
vim.cmd.colorscheme "catppuccin"
