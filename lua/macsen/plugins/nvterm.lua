return {
	"NvChad/nvterm",
	config = function()
		require("nvterm").setup()
		local term = require("nvterm.terminal")

		local keymap = vim.keymap
		keymap.set("n", "<leader>h", function()
			term.toggle("horizontal")
		end, { desc = "Toggle horizontal terminal", noremap = true, silent = true })
		keymap.set("n", "<leader>v", function()
			term.toggle("vertical")
		end, { desc = "Toggle vertical terminal", noremap = true, silent = true })
	end,
}
