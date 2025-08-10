return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({})

		local keymap = vim.keymap

		local harpoon_ui = require("harpoon.ui")

		keymap.set("n", "<leader>pu", function()
			harpoon_ui.toggle_quick_menu()
		end, { desc = "Toggle harpoon ui" })

		keymap.set("n", "<leader>m", function()
			harpoon_ui.add_file()
		end, { desc = "Mark file" })

		keymap.set("n", "<a-1>", function()
			harpoon_ui.nav_file(1)
		end, { desc = "Harpoon page 1" })

		keymap.set("n", "<a-2>", function()
			harpoon_ui.nav_file(2)
		end, { desc = "Harpoon page 1" })

		keymap.set("n", "<a-3>", function()
			harpoon_ui.nav_file(3)
		end, { desc = "Harpoon page 1" })

		keymap.set("n", "<a-4>", function()
			harpoon_ui.nav_file(4)
		end, { desc = "Harpoon page 1" })

		local harpoon_term = require("harpoon.term")

		keymap.set("n", "<c-1>", function()
			harpoon_term.gotoTerminal(1)
		end, { desc = "Terminal 1" })

		keymap.set("n", "<c-2>", function()
			harpoon_term.gotoTerminal(2)
		end, { desc = "Terminal 2" })

		keymap.set("n", "<c-3>", function()
			harpoon_term.gotoTerminal(3)
		end, { desc = "Terminal 3" })

		keymap.set("n", "<c-4>", function()
			harpoon_term.gotoTerminal(4)
		end, { desc = "Terminal 4" })
	end,
}
