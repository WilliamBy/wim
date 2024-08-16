---@type LazySpec
return {
  "goolord/alpha-nvim",
  optional = true,
  opts = function(_, opts)
    opts.section.header.val = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
      "---------------------------------",
      "    Fake It Until You Make It.   ",
      "=================================",
    }
    opts.section.header.opts.hl = "Constant"

    opts.section.buttons.val = {
      opts.button("s", "  Restore Sessions", function() require("resession").load() end, { silent = true }),
      opts.button(
        "d",
        "  Directory",
        function() require("resession").load(nil, { dir = "dirsession" }) end,
        { silent = true }
      ),
      opts.button("f", "󰱼  Find file", ":Telescope find_files <CR>", { silent = true }),
      opts.button("e", "  New file", ":ene <BAR> startinsert <CR>", { silent = true }),
      opts.button("o", "  Old files", ":Telescope oldfiles <CR>", { silent = true }),
      opts.button("c", "  Configuration", ":e " .. vim.fn.stdpath "config" .. "<CR>", { silent = true }),
      opts.button("q", "  Quit Neovim", ":qa<CR>", { silent = true }),
    }
    opts.config.layout = {
      { type = "padding", val = 0 },
      opts.section.header,
      { type = "padding", val = 1 },
      opts.section.buttons,
      { type = "padding", val = 1 },
      opts.section.footer,
    }
  end,
}
