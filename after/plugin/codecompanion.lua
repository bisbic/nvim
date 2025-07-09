require("codecompanion").setup({
  strategies = {
    chat = {
      -- adapter = "copilot",
      adapter = "anthropic",
      model = "claude-sonnet-4-20250514",
      slash_commands = {
	["file"] = {
	  -- Location to the slash command in CodeCompanion
	  callback = "strategies.chat.slash_commands.file",
	  description = "Select a file using Telescope",
	  opts = {
	    provider = "telescope", -- Other options include 'default', 'mini_pick', 'fzf_lua', snacks
	    contains_code = true,
	  },
	},
      },
    },
    inline = {
      adapter = "anthropic",
      model = "claude-sonnet-4-20250514",
    },
    agent = {
      adapter = "anthropic",
      model = "claude-sonnet-4-20250514",
    },
  },
  adapters = {
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        env = {
          api_key = "cmd: gpg --batch --quiet --decrypt ~/stow/manual/anthropic/codecompanion_anthropic_key.txt.gpg",
        },
      })
    end,
  },
  display = {
    action_palette = {
      width = 95,
      height = 10,
      prompt = "Prompt ", -- Prompt used for interactive LLM calls
      provider = "telescope", -- default|telescope|mini_pick
      opts = {
	show_default_actions = true, -- Show the default actions in the action palette?
	show_default_prompt_library = true, -- Show the default prompt library in the action palette?
      },
    },
  },
})
