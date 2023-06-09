local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

-- somehow needs to do this AFTER lsp setup
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
