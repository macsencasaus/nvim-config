return {
    "numToStr/Comment.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "JoosepAlviste/nvim-ts-context-commentstring",

    },
    config = function()
        local comment = require("Comment")

        local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

        comment.setup({
            pre_hook = ts_context_commentstring.create_pre_hook(),
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>/",
            function()
                require("Comment.api").toggle.linewise.current()
            end,
            { desc = "Toggle Comment" }
        )

        keymap.set("v", "<leader>/", "<Esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { desc = "Toggle comment" })

    end,
}
