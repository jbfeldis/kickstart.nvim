-- ruby_lsp: no cmd override needed — binary is in $PATH (verified 2026-05-15)
-- Previous hardcoded path /home/jb/.gem/... was a bug, fixed by removal.

-- Enable Herb LSP for Rails ERB templates (Neovim 0.11+ vim.lsp API)
vim.lsp.enable('herb_ls')
