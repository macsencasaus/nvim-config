return {
	{
		"aktersnurra/no-clown-fiesta.nvim",
		priority = 1000,
	},
	{
		"zenbones-theme/zenbones.nvim",
		priority = 1000,
		dependencies = {
			"rktjmp/lush.nvim",
		},
	},
	{
		dir = "/home/macsen/code/morebones.nvim",
		priorty = 1000,
		dependencies = {
			"rktjmp/lush.nvim",
		},
		config = function()
			vim.cmd("colorscheme nordbones")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
