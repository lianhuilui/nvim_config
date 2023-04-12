local builtin = require('telescope.builtin')

-- Load extension.
require("telescope").load_extension("recent_files")

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>go', builtin.vim_options, {})
vim.keymap.set('n', '<leader>cs', function() builtin.colorscheme({ enable_preview = true }) end, {})
