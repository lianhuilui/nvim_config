local opt = vim.opt

opt.tabstop=4
opt.shiftwidth = 4
opt.expandtab=true
opt.smartindent = true
opt.number = true
opt.relativenumber = true

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
kmap("n", "<leader>v", "<C-w>v")
kmap("n", "<leader>h", "<C-w>n")

-- write file
kmap("n", "<leader>w", vim.cmd.w)

-- quit
kmap("n", "<leader>q", vim.cmd.q)

-- quit all
kmap('n', "<leader>Q", function()
    vim.cmd(":qa")
end)

-- exit insert mode
kmap("i", "fj", "<esc>")
kmap("i", "jf", "<esc>")

-- quick search / replace
kmap("n", "<leader>s", ":%s/")

-- enter
kmap('i', "jj", "<CR>")
kmap('c', "<leader><leader>", "<CR>")

-- colon
kmap('n', "<leader>;", ":")

-- format file and return to position
kmap('n', "<F7>", "magg=G'a")
