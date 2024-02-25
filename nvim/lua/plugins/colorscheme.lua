return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    ---@class CatppuccinOptions
    opts = {
      transparent_background = true,
      highlight_overrides = {
        macchiato = function(macchiato)
          return {
            LineNr = { fg = macchiato.overlay1 },
            Comment = { fg = macchiato.overlay0 },
            NeoTreeMessage = { fg = macchiato.overlay1 },
          }
        end,
      },
    },
  },
  { "folke/tokyonight.nvim" },
  { "rose-pine/neovim" },
  { "navarasu/onedark.nvim" },
  {
    "rebelot/kanagawa.nvim",
    opts = {
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme
        return {
          Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },
  { "Mofiqul/dracula.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  {
    "xiyaowong/transparent.nvim",
    opts = {
      extra_groups = { "Pmenu", "Float", "NormalFloat" },
    },
  },
}
