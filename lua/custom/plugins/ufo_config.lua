-- Global options for folding
vim.o.foldcolumn = '1' -- Shows the fold column with a width of 1 character
vim.o.foldlevel = 99 -- A large value is needed for ufo's provider to work correctly, defining the default open level
vim.o.foldlevelstart = 99
vim.o.foldenable = true -- Enables folding

-- Remap standard Neovim fold keys to ufo functions for full control
vim.keymap.set('n', 'zR', require('ufo').openAllFolds)
vim.keymap.set('n', 'zM', require('ufo').closeAllFolds)
vim.keymap.set('n', 'K', function()
  local winid = require('ufo').peekFoldedLinesUnderCursor()
  if not winid then
    -- choose one of coc.nvim and nvim lsp
    vim.fn.CocActionAsync 'definitionHover' -- coc.nvim
    vim.lsp.buf.hover()
  end
end)

-- Initialize nvim-ufo
require('ufo').setup {
  provider_selector = function(bufnr, filetype, buftype)
    return { 'treesitter', 'indent' }
  end,
}

return {}
