local opt = vim.opt

opt.tabstop=4
opt.shiftwidth = 4
opt.expandtab=true
opt.smartindent = true
opt.number = true
opt.relativenumber = true
opt.splitbelow = true
opt.splitright = true

opt.ignorecase = true
opt.smartcase = true

opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.incsearch = true
opt.hlsearch = false

opt.termguicolors = true
opt.signcolumn = "yes"
opt.scrolloff = 8

vim.g.mapleader = " "

local kmap = function(mode, keys, command)
    vim.keymap.set(mode, keys, command)
end

-- navigate windows
-- left
kmap("n", "<leader>j", "<C-w>h")
-- right
kmap("n", "<leader>l", "<C-w>l")
-- down
kmap("n", "<leader>k", "<C-w>j")
-- up
kmap("n", "<leader>i", "<C-w>k")

-- split windows
kmap("n", "<leader>v", ":vnew<CR>")
kmap("n", "<leader>h", "<C-w>n")

-- write file
kmap("n", "<leader>w", vim.cmd.w)

-- hide nvim-tree
kmap("n", "<leader>o", "<C-w>o")

-- quit
kmap("n", "<leader>q", vim.cmd.q)

-- quit all
kmap('n', "<leader>Q", function()
    vim.cmd(":qa")
end)

-- exit insert mode
kmap("i", "jf", "<esc>")

-- exit insertmode and save file
kmap("i", "jw", "<esc>:w<CR>")

-- quick search / replace
kmap("n", "<leader>s", ":%s/")

-- insert newline in insert mode
kmap('i', "jj", "<CR>")

-- reload config
kmap('n', "<leader>c", ":source $MYVIMRC<CR>")

-- press enter in commandline mode
kmap('c', "<leader><leader>", "<CR>")

-- colon
kmap('n', "<leader>;", ":")

-- format file and return to position
kmap('n', "<F7>", "magg=G'a")

-- Map a shortcut to open the picker.
vim.api.nvim_set_keymap("n", "<leader>r",
    [[<cmd>lua require('telescope').extensions.recent_files.pick()<CR>]],
    {noremap = true, silent = true})

-- inline errors and warnings
vim.diagnostic.config({
    virtual_text = true
})
