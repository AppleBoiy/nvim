return {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    config = function()
        require("venv-selector").setup({
            anaconda_base_path = "/opt/homebrew/Caskroom/miniconda/base",
            anaconda_envs_path = "/opt/homebrew/Caskroom/miniconda/base/envs",
            -- Your options go here
            -- name = "venv",
            auto_refresh = true,
        })

        local keymap = vim.keymap

        keymap.set("n", "<leader>vs", "<cmd>VenvSelect<CR>", { desc = "open VenvSelector to pick a venv." })
        keymap.set(
            "n",
            "<leader>vc",
            "<cmd>VenvSelectCached<CR>",
            { desc = "retrieve the venv from a cache (the one previously used for the same project directory)." }
        )
    end,
    event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
}
