---@type LazySpec
return {
  "folke/noice.nvim",
  optional = true,
  opts = function(_, opts)
    local utils = require "astrocore"
    return utils.extend_tbl(opts, {
      lsp = {
        signature = {
          enabled = false,
        },
        hover = {
          enabled = false,
        },
        progress = {
          enabled = false,
        },
      },
      presets = {
        bottom_search = false, -- use a classic bottom cmdline for search
      },
    })
  end,
}
