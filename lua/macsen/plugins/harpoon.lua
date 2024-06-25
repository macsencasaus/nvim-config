return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({})

		local keymap = vim.keymap

		keymap.set("n", "<leader>pu", function()
			require("harpoon.ui").toggle_quick_menu()
		end, { desc = "Toggle harpoon ui" })

		keymap.set("n", "<leader>pp", function()
			require("harpoon.mark").add_file()
		end, { desc = "Mark file" })

		keymap.set("n", "<Tab>", function()
			require("harpoon.ui").nav_next()
		end, { desc = "Next harpoon" })

		keymap.set("n", "<S-Tab>", function()
			require("harpoon.ui").nav_prev()
		end, { desc = "Previous harpoon" })
	end,
}
