return {
  'MeanderingProgrammer/render-markdown.nvim',
  -- Temporarily disabled (2026-05-15 22h): the new main-branch of
  -- nvim-treesitter no longer auto-installs parsers, so opening a .md
  -- buffer crashes with "No parser for language markdown" which also
  -- breaks neo-tree's open_file. To re-enable: install the parsers
  -- (`:lua require('nvim-treesitter').install({'markdown', 'markdown_inline'})`)
  -- then flip enabled back to true (or just remove this line).
  enabled = false,
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },
  ---@module 'render-markdown'
  ---@type render.md.UserConfig
  opts = {},
}
