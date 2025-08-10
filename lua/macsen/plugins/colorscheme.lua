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
        config = function()
            vim.cmd("colorscheme rosebones")
        end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
