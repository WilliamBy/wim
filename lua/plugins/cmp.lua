---@type LazySpec
return { -- override nvim-cmp plugin
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    -- opts parameter is the default options table
    -- the function is lazy loaded so cmp is able to be required
    local cmp = require "cmp"
    -- modify the mapping part of the table
    opts.mapping["<C-c>"] = cmp.mapping.complete()
  end,
}
