-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
	{ "AstroNvim/astrocommunity", dev = false },
	-- Language Specific
	{ import = "astrocommunity.pack.lua" },
	{ import = "astrocommunity.pack.cpp" },
	-- Fuzzy Finder
	{ import = "astrocommunity.fuzzy-finder.telescope-zoxide" },
	-- Edit & Motion
	{ import = "astrocommunity.search.nvim-spectre" },
	{ import = "astrocommunity.editing-support.vim-move" },
	{ import = "astrocommunity.editing-support.neogen" },
	{ import = "astrocommunity.editing-support.nvim-regexplainer" },
	{ import = "astrocommunity.editing-support.refactoring-nvim" },
	{ import = "astrocommunity.editing-support.multiple-cursors-nvim" },
	{ import = "astrocommunity.editing-support.mini-splitjoin" },
	{ import = "astrocommunity.editing-support.mini-operators" },
	{ import = "astrocommunity.motion.nvim-surround" },
	{ import = "astrocommunity.motion.flash-nvim" },
	-- UI
	{ import = "astrocommunity.colorscheme.catppuccin" },
	{ import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
	{ import = "astrocommunity.utility.noice-nvim" },
	-- LSP
	{ import = "astrocommunity.diagnostics.trouble-nvim" },
	{ import = "astrocommunity.lsp.lspsaga-nvim" },
	{ import = "astrocommunity.lsp.lsplinks-nvim" },
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },
	{ import = "astrocommunity.lsp.actions-preview-nvim" },
	{ import = "astrocommunity.lsp.nvim-lsp-file-operations" },
	{ import = "astrocommunity.markdown-and-latex.peek-nvim" },
	{ import = "astrocommunity.utility.mason-tool-installer-nvim" },
	-- DAP
	{ import = "astrocommunity.debugging.nvim-dap-virtual-text" },
	-- Runner
	{ import = "astrocommunity.code-runner.sniprun" },
	-- cmp
	{ import = "astrocommunity.completion.cmp-latex-symbols" },
	{ import = "astrocommunity.completion.fittencode-nvim" },
	-- VSC
	{ import = "astrocommunity.git.diffview-nvim" },
	-- External Integration
	{ import = "astrocommunity.recipes.neovide" },
	{ import = "astrocommunity.recipes.vscode" },
	{ import = "astrocommunity.media.vim-wakatime" },
}
