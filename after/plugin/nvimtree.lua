vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    renderer = {
        indent_markers = {
            enable = true,
            inline_arrows = true,
        },
        highlight_git = true,
        icons = {
            git_placement = "after"
        }
    },
    filters = {
        dotfiles = true,
    }
})

vim.keymap.set("n", "<leader>E", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeFocus)
vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>:NvimTreeFocus<CR>")
