return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				-- go = { "gopls" },
				templ = { "templ" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				cuda = { "clang-format" },
				rust = { "rustfmt" },
				sql = { "sql-formatter" },
			},
			-- lsp_fallback = true,
			-- async=false,
			-- format_on_save = {
			-- 	lsp_fallback = true,
			-- 	async = false,
			-- },
		})

		conform.formatters.prettier = {
			prepend_args = function(self, ctx)
				return { "--tab-width", "4" }
			end,
		}

		conform.formatters["clang-format"] = {
			prepend_args = function(self, ctx)
				return { "--fallback-style=Chromium" }
			end,
		}

		vim.keymap.set({ "n", "v" }, "<leader>m", function()
			conform.format({
				lsp_fallback = true,
				async = false,
			})
		end, { desc = "Format file or range" })

		vim.keymap.set({ "i" }, "<C-m>", function()
			conform.format({
				lsp_fallback = true,
				async = false,
			})
		end, { noremap = true, desc = "Format file or range" })
	end,
}
