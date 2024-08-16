-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  { "AstroNvim/astrocommunity", dev = false },
  -- Language Specific
  { import = "astrocommunity.pack.lua" },
  -- Fuzzy Finder
  { import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
  -- Edit & Motion
  { import = "astrocommunity.editing-support.vim-move" },
  { import = "astrocommunity.editing-support.refactoring-nvim" },
  { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  { import = "astrocommunity.editing-support.mini-operators" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- UI
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  -- External Integration
  { import = "astrocommunity.recipes.neovide" },
  { import = "astrocommunity.recipes.vscode" },
}
