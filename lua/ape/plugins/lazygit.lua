return {
    "kdheepak/lazygit.nvim",
    config = function()
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>wg", "<cmd>LazyGit<CR>", { desc = "open lazygit" })
    end,
}
