return {
	"NvChad/nvim-colorizer.lua",
	config = function(_, opts)
		require("colorizer").setup(opts)

		vim.defer_fn(function()
			require("colorizer").attach_to_buffer(0)
		end, 0)
	end,
}
