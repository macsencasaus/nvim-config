return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "arkav/lualine-lsp-progress" },
	config = function()
		local lualine = require("lualine")

		local function lsp_client_names()
			local bufnr = vim.api.nvim_get_current_buf()
			local clients = vim.lsp.get_active_clients({ bufnr = bufnr })
			if next(clients) == nil then
				return "" -- No LSP attached
			end
			local names = {}
			for _, client in pairs(clients) do
				table.insert(names, client.name)
			end
			return table.concat(names, " | ")
		end

		lualine.setup({
			options = {
				theme = "auto",
				component_separators = "|",
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "filename" },
				lualine_x = { lsp_client_names },
				lualine_y = { "encoding", "fileformat", "filetype" },
				lualine_z = { "location" },
			},
		})
	end,
}
