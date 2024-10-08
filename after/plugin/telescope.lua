local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fff', function()
  builtin.find_files({
    hidden = true,
    no_ignore = true,
    no_ignore_parent = true
  })
end, {})
vim.keymap.set('n', '<leader>fgg', function()
  builtin.live_grep({
    additional_args = function(opts)
      return {"--hidden", "--no-ignore"}
    end
  })
end, {})
