return {
  {
    'github/copilot.vim',
    cmd = { 'Copilot' },
    event = { 'FocusGained' },
    init = function()
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
    end,
  },
  -- {
  --   'CopilotC-Nvim/CopilotChat.nvim',
  --   dependencies = {
  --     { 'github/copilot.vim' },
  --     { 'nvim-lua/plenary.nvim', branch = 'master' },
  --   },
  --   build = 'make tiktoken',
  --   opts = {},
  -- },
}
