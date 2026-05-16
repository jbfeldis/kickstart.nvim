vim.pack.add { 'https://github.com/github/copilot.vim' }

-- Copilot stays off unless the window has focus (avoids ghost suggestions
-- in background nvim instances).
vim.g.copilot_enabled = false

vim.api.nvim_create_autocmd('FocusGained', {
  group = vim.api.nvim_create_augroup('copilot-focus', { clear = true }),
  callback = function()
    vim.g.copilot_enabled = true
  end,
})

vim.api.nvim_create_autocmd('FocusLost', {
  group = vim.api.nvim_create_augroup('copilot-unfocus', { clear = true }),
  callback = function()
    vim.g.copilot_enabled = false
  end,
})
