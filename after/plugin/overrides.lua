-- Re-call setup() of kickstart-configured plugins to layer custom config.
-- Safe pattern: each plugin's setup() is idempotent and merges (verified
-- for telescope, conform, nvim-treesitter as of 2026-05).

-- Telescope: show hidden files, ignore .git/, buffer picker tweaks
require('telescope').setup({
  defaults = {
    file_ignore_patterns = { '.git/' },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      theme = 'dropdown',
      previewer = false,
      mappings = {
        n = { ['d'] = 'delete_buffer' },
        i = { ['<C-d>'] = 'delete_buffer' },
      },
    },
  },
})

-- Conform: per-filetype formatters (Ruby/JS/TS/Vue/JSON)
require('conform').setup({
  formatters_by_ft = {
    ruby = { 'rubocop' },
    typescript = { { 'prettierd', 'prettier' } },
    javascriptreact = { { 'prettierd', 'prettier' } },
    typescriptreact = { { 'prettierd', 'prettier' } },
    vue = { { 'prettierd', 'prettier' } },
    less = { { 'prettierd', 'prettier' } },
    json = { { 'prettierd', 'prettier' } },
    jsonc = { { 'prettierd', 'prettier' } },
  },
})

-- Treesitter: extra regex highlighting for Rails ERB
require('nvim-treesitter.configs').setup({
  highlight = {
    additional_vim_regex_highlighting = { 'ruby', 'embedded_template' },
  },
})
