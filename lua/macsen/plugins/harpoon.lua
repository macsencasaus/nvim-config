return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup()

		local keymap = vim.keymap

		local harpoon_ui = require("harpoon.ui")

		keymap.set("n", "<leader>pu", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, { desc = "Toggle harpoon ui" })

		keymap.set("n", "<leader>pa", function()
			harpoon:list():add()
		end, { desc = "Mark file" })

		keymap.set("n", "<a-1>", function()
			harpoon:list():select(1)
		end, { desc = "Harpoon page 1" })

		keymap.set("n", "<a-2>", function()
			harpoon:list():select(2)
		end, { desc = "Harpoon page 1" })

		keymap.set("n", "<a-3>", function()
			harpoon:list():select(3)
		end, { desc = "Harpoon page 1" })

		keymap.set("n", "<a-4>", function()
			harpoon:list():select(4)
		end, { desc = "Harpoon page 1" })

		-- local harpoon_term = require("harpoon.term")
		--
		-- keymap.set("n", "<c-1>", function()
		-- 	harpoon_term.gotoTerminal(1)
		-- end, { desc = "Terminal 1" })
		--
		-- keymap.set("n", "<c-2>", function()
		-- 	harpoon_term.gotoTerminal(2)
		-- end, { desc = "Terminal 2" })
		--
		-- keymap.set("n", "<c-3>", function()
		-- 	harpoon_term.gotoTerminal(3)
		-- end, { desc = "Terminal 3" })
		--
		-- keymap.set("n", "<c-4>", function()
		-- 	harpoon_term.gotoTerminal(4)
		-- end, { desc = "Terminal 4" })
	end,
}
