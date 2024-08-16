---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- normal mode
      n = {
        -- second key is the lefthand side of the map

        -- basic edit
        ["L"] = { "$", desc = "line tail" },
        ["H"] = { "0", desc = "line head" },
        ["<C-s>"] = { "<CMD>w<CR>", desc = "Save Buffer" },
        ["z"] = { desc = "Bootstrap" },
        ["zk"] = { "H", desc = "viewport top" },
        ["zj"] = { "L", desc = "viewport bottom" },

        -- buffer operation
        ["<Leader>b"] = { desc = "Buffers" },
        ["<C-n>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["<C-p>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["<C-S-p>"] = { function() require("astrocore.buffer").move(1) end, desc = "Move buffer right" },
        ["<C-S-n"] = { function() require("astrocore.buffer").move(-1) end, desc = "Move buffer left" },
        ["<Leader>bw"] = { "<CMD>w<CR>", desc = "Save Buffer" },
        ["<Leader>bq"] = {
          function() -- pop up alpha buffer when last buffer be closed
            local bufs = vim.fn.getbufinfo { buflisted = 1 }
            require("astrocore.buffer").close(0)
            if require("astrocore").is_available "alpha-nvim" and not bufs[2] then require("alpha").start() end
          end,
          desc = "Close current buffer",
        },
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer selected",
        },
        ["<Leader>bo"] = { function() require("astrocore.buffer").close_all(true) end, desc = "Close all buffers" },

        -- Window Operation
        ["<C-S-h>"] = { "<C-w>H", desc = "Move left window" },
        ["<C-S-l>"] = { "<C-w>L", desc = "Move right window" },
        ["<C-S-j>"] = { "<C-w>J", desc = "Move down window" },
        ["<C-S-k>"] = { "<C-w>K", desc = "Move up window" },
        ["<Leader>wq"] = { "<C-w>q", desc = "Quit window" },

        -- Toggle
        ["<Leader>n"] = { "", desc = "Toggle" },
        ["<Leader>nh"] = { "<CMD>nohl<CR>", desc = "No highlight" },
        ["<Leader>nw"] = { function() vim.wo.wrap = not vim.wo.wrap end, desc = "Toggle wrap" },
        ["<Leader>nd"] = { function() require("utils").toggle_diagnostic(0) end, desc = "Toggle diagnostic" },
        ["<Leader>nc"] = { function() vim.diagnostic.reset() end, desc = "Reset diagnosti cache" },

        -- Find & Search
        ["<leader>fg"] = { "<CMD>Telescope live_grep<CR>", desc = "Search Text" },
      },

      -- insert mode
      i = {
        -- basic edit
        ["<C-s>"] = { "<ESC><CMD>w<CR>", desc = "Save Buffer" },
      },

      -- visual mode
      v = {
        ["<S-h>"] = { "0", desc = "line head" },
        ["<S-l>"] = { "$", desc = "line tail" },
      },
    },
  },
}
