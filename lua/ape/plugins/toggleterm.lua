return {
    "akinsho/toggleterm.nvim",
    config = function()
        require("toggleterm").setup()

        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle horizontal terminal at bot" })
    end,
}
