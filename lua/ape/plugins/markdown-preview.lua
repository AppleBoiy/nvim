return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
        vim.g.mkdp_filetypes = { "markdown" }

        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { desc = "preview markdown" })
    end,
    ft = { "markdown" },
}
