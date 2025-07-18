-- Toggle update the packages run :PackerSync
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Navigation
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'}, {'nvim-treesitter/nvim-treesitter'} }
    }
    use {
      'phaazon/hop.nvim',
      branch = 'v2', -- optional but strongly recommended
      config = function()
	-- you can configure Hop the way you like here; see :h hop-config
	require'hop'.setup { keys = 'asdghklqwertyuiopzxcvbnmfj' }
      end
    }
    use({'theprimeagen/harpoon'})
    -- Themes
    -- use({'nanotech/jellybeans.vim'})
    -- use({'rebelot/kanagawa.nvim'})
    use { "catppuccin/nvim", as = "catppuccin" }
    -- Syntax
    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    -- IDE
    use({'airblade/vim-gitgutter'})
    use({'maximbaz/lightline-ale'})
    use({'itchyny/lightline.vim'})
    -- LSP Support
    use({'neovim/nvim-lspconfig'})             -- Required
    use({'williamboman/mason.nvim'})           -- Optional
    use({'williamboman/mason-lspconfig.nvim'}) -- Optional
    -- Autocompletion
    use({'hrsh7th/nvim-cmp'})     -- Required
    use({'hrsh7th/cmp-nvim-lsp'}) -- Required
    use({'hrsh7th/cmp-path'})     -- Required
    use({'hrsh7th/cmp-cmdline'})     -- Required
    use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
    }
    -- IA
    -- use({"github/copilot.vim"})
    -- CodeCompanion
    use({
      "olimorris/codecompanion.nvim",
      requires = {
	"nvim-lua/plenary.nvim",
	"nvim-treesitter/nvim-treesitter",
      }
    })
--[[
    use {
      "Exafunction/codeium.nvim",
      requires = {
	"nvim-lua/plenary.nvim",
	"hrsh7th/nvim-cmp",
      },
      config = function()
	require("codeium").setup({
	})
      end
    }
]]
    -- Rails
    use({'tpope/vim-rails'})
    use({'vim-ruby/vim-ruby'})
    -- Tmux
    use({
      'christoomey/vim-tmux-navigator',
      lazy = false,
    })
    -- Misc
    use({
      "iamcco/markdown-preview.nvim",
      run = function()
	vim.fn["mkdp#util#install"]()
      end,
    })
  if packer_bootstrap then
    require('packer').sync()
  end
end)
