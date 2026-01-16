return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"zbirenbaum/copilot.lua",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("codecompanion").setup({
			adapters = {
				copilot = function()
					return require("codecompanion.adapters").extend("copilot", {})
				end,
			},
			strategies = {
				chat = { adapter = "copilot" },
				inline = { adapter = "copilot" },
			},
		})

		vim.keymap.set("n", "<leader>cc", "<cmd>CodeCompanionChat<cr>", { desc = "Copilot Chat" })
		vim.keymap.set("v", "<leader>ce", "<cmd>CodeCompanion<cr>", { desc = "Copilot Edit Selection" })
		vim.keymap.set("n", "<leader>ca", "<cmd>CodeCompanionActions<cr>", { desc = "Copilot Actions" })
	end,
}
