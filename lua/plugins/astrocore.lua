-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  optional = true,
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        exrc = true, -- local config support (.nvim.lua .nvimrc .exrc)
        tabstop = 4,
        shiftwidth = 4,
        expandtab = true,
        autoindent = true,
        smartindent = true,
        wrapmargin = 2,
        linebreak = true,
        breakindent = true,
        showbreak = "> ",
        cursorline = true,
        splitright = true,
        splitbelow = true,
        ignorecase = true,
        smartcase = true,
      },
      g = { -- vim.g.<key>
        move_key_modifier_visualmode = "S", -- used by vim-move
      },
    },
  },
}
