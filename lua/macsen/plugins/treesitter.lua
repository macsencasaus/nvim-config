return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			highlight = {
				enable = true,
			},

			indent = { enable = true },

			ensure_installed = {
				"c",
				"cpp",
				"python",
				"go",
				"json",
				"javascript",
				"typescript",
				"tsx",
				"html",
				"css",
				"markdown",
				"bash",
				"lua",
				"gitignore",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})

		local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		parser_config.y86 = {
			install_info = {
				url = "https://github.com/macsencasaus/tree-sitter-y86.git",
				files = { "src/parser.c" },
				branch = "main",

				generate_requires_npm = false,
				requires_generate_from_grammar = false,
			},
		}

		vim.filetype.add({
			extension = {
				zag = "zag",
			},
		})

		parser_config.zag = {
			install_info = {
				url = "https://github.com/macsencasaus/tree-sitter-zag",
				files = { "src/parser.c" },
				branch = "main",
			},
		}

		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.ll",
			callback = function()
				vim.bo.filetype = "llvm"
			end,
		})

		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.ys",
			callback = function()
				vim.bo.filetype = "y86"
			end,
		})

		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.glorp",
			callback = function()
				vim.bo.filetype = "glorp"
			end,
		})

		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.tex",
			callback = function()
				vim.bo.filetype = "latex"
			end,
		})

		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = "*.ejs",
			callback = function()
				vim.bo.filetype = "html"
			end,
		})
	end,
}
