return {
	"f-person/git-blame.nvim",
	-- load the plugin at startup
	event = "VeryLazy",
	-- Because of the keys part, you will be lazy loading this plugin.
	-- The plugin wil only load once one of the keys is used.
	-- If you want to load the plugin at startup, add something like event = "VeryLazy",
	-- or lazy = false. One of both options will work.
	opts = {
		-- your configuration comes here
		-- for example
		enabled = false,
		message_template = " <summary> • <date> • <author>", -- template for the blame message, check the Message template section for more options
		date_format = "%m-%d-%Y", -- template for the date, check Date format section for more options
		virtual_text_column = 0, -- virtual text start column, check Start virtual text at column section for more options
		delay = 0,
	},

	vim.keymap.set("n", "<leader>gb", "<CMD>GitBlameToggle<CR>", { desc = "Toggle git blame" }),
	vim.keymap.set("n", "<leader>gs", "<CMD>GitBlameCopySHA<CR>", { desc = "Copy commit SHA" }),
	vim.keymap.set("n", "<leader>go", "<CMD>GitBlameOpenFileURL<CR>", { desc = "Open commit URL" }),
	vim.keymap.set("n", "<leader>gc", "<CMD>GitBlameCopyCommitURL<CR>", { desc = "Copy commit URL" }),
}
