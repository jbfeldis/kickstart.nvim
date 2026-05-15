-- Compat shim: telescope.nvim (and possibly other plugins) still call
-- `vim.treesitter.language.ft_to_lang(ft)`, which was removed from Neovim
-- core during the treesitter API refactor. Forward to the new `get_lang`.
-- Can be removed once all plugins are updated.
if not vim.treesitter.language.ft_to_lang then
  vim.treesitter.language.ft_to_lang = function(ft)
    return vim.treesitter.language.get_lang(ft) or ft
  end
end
