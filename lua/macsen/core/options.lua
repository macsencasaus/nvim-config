local opt = vim.opt
local o = vim.o

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

-- opt.wrap = true
opt.laststatus = 3

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"

o.showmode = false

vim.api.nvim_create_autocmd("FileType", {
	pattern = "haskell",
	callback = function()
		opt.tabstop = 2
		opt.shiftwidth = 2
	end,
})

vim.filetype.add({ extension = { templ = "templ" } })
