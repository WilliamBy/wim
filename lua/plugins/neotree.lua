---@diagnostic disable: missing-parameter
---@type LazySpec
return {
  "nvim-neo-tree/neo-tree.nvim",
  optional = true,
  opts = function(_, opts)
    opts.filesystem = {
      bind_to_cwd = true, -- true creates a 2-way binding between vim's cwd and neo-tree's root
      cwd_target = {
        sidebar = "global", -- sidebar is when position = left or right
        current = "window", -- current is when position = current
      },
    }
  end,
}
