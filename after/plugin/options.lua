vim.g.have_nerd_font = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = '80'

-- Disable unused remote-plugin providers (no Python/Ruby/Perl/Node neovim hosts installed)
-- Silences the corresponding :checkhealth vim.provider warnings.
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
