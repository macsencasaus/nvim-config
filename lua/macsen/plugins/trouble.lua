return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  -- dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle focus=true<CR>", desc = "Open/close trouble list" },
  }
}
