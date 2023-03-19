require("toggleterm").setup()

function _G.set_terminal_keymaps()
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], {buffer = 0}) -- note: keys are captured by windows terminal before we can read it
    vim.keymap.set('t', '<leader>q', [[<C-\><C-n><C-w>]], {buffer = 0})
end

vim.keymap.set('n', '<leader>tt', ":ToggleTerm<CR>")
vim.keymap.set('n', '<leader>tf', ":ToggleTerm direction=float<CR>")
vim.keymap.set('n', '<leader>tv', ":ToggleTerm direction=vertical<CR>")
vim.keymap.set('n', '<leader>th', ":ToggleTerm direction=horizontal<CR>")
vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')
