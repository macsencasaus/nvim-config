vim.g.mapleader = " "

local keymap = vim.keymap

-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>=", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- tab management
keymap.set("n", "<leader>o", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>x", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- navigation within insert mode
keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })

-- navigation around wrapped text
keymap.set("n", "j", "gj", { desc = "Move down" })
keymap.set("n", "k", "gk", { desc = "Move up" })

keymap.set("v", "j", "gj", { desc = "Move down" })
keymap.set("v", "k", "gk", { desc = "Move up" })

keymap.set("n", "<a-j>", "gjzz", { desc = "move down and center" })
keymap.set("n", "<a-k>", "gkzz", { desc = "move up and center" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move page down", noremap = true })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move page up", noremap = true })
keymap.set("n", "G", "Gzz", { desc = "End of page", noremap = true })

keymap.set("n", "<leader>j", "<cmd>w<cr>", { desc = "Save file" })
keymap.set("n", "<leader>k", "<cmd>wa<cr>", { desc = "Save all files" })

keymap.set("n", "n", "nzz", { desc = "Next highlight", noremap = true })
keymap.set("n", "N", "Nzz", { desc = "Previous highlight", noremap = true })

keymap.set("n", "<leader>ww", "<cmd>set wrap!<cr>", { desc = "Toggle wrap", noremap = true })

keymap.set("n", "<leader>a", "zA", { desc = "Toggle fold", noremap = true })
keymap.set("n", "zm", "zmzz", { desc = "Fold all", noremap = true })

keymap.set(
	"t",
	"<C-x>",
	vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
	{ desc = "Escape terminal mode " }
)
