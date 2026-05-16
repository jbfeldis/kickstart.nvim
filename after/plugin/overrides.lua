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
-- For JS/TS family: try prettierd first, fall back to prettier (stop_after_first).
require('conform').setup({
  formatters_by_ft = {
    ruby = { 'rubocop' },
    typescript = { 'prettierd', 'prettier', stop_after_first = true },
    javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
    typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
    vue = { 'prettierd', 'prettier', stop_after_first = true },
    less = { 'prettierd', 'prettier', stop_after_first = true },
    json = { 'prettierd', 'prettier', stop_after_first = true },
    jsonc = { 'prettierd', 'prettier', stop_after_first = true },
  },
})

-- Treesitter: nvim-treesitter main branch (post 2026-04 refactor) removed
-- `nvim-treesitter.configs`. Highlighting + parser install is now handled
-- by kickstart init.lua directly. To get ERB (embedded_template), install
-- the parser via `:lua require('nvim-treesitter').install({'embedded_template'})`
-- once nvim-treesitter is on a recent main commit.
