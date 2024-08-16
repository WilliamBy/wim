---@type LazySpec
return {
  "AstroNvim/astrocore",
  optional = true,
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = { -- configure vim.opt options
        -- configure font
        guifont = "Maple Mono SC NF,Noto_Color_Emoji:h14",
        -- line spacing
        linespace = 0,
      },
      g = { -- configure vim.g variables
        neovide_scroll_animation_length = 0.2,
        neovide_scroll_animation_far_lines = 1,
        neovide_cursor_animation_length = 0.08,
        neovide_padding_top = 3,
        neovide_padding_bottom = 3,
        neovide_padding_right = 3,
        neovide_padding_left = 3,
        neovide_hide_mouse_when_typing = true,
        neovide_cursor_vfx_mode = "ripple",
        neovide_refresh_rate = 144,
      },
    },
  },
}
