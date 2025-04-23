return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
    },
  },

  {
    "rafi/awesome-vim-colorschemes",
  },

  {
    "sainnhe/everforest",
    opts = function()
      local lualine = require("lualine")
      local custom_everforest = require("lualine.themes.everforest")

      custom_everforest.normal.c.fg = "#293136"
      custom_everforest.inactive.c.fg = "#293136"
      custom_everforest.command.c.fg = "#293136"
      custom_everforest.replace.c.fg = "#293136"
      custom_everforest.terminal.c.fg = "#293136"
      custom_everforest.insert.c.fg = "#293136"
      custom_everforest.visual.c.fg = "#293136"

      custom_everforest.normal.a.fg = "#d8caac"
      custom_everforest.visual.a.fg = "#d8caac"
      custom_everforest.insert.a.fg = "#d8caac"
      custom_everforest.command.a.fg = "#d8caac"
      custom_everforest.replace.a.fg = "#d8caac"
      custom_everforest.terminal.a.fg = "#d8caac"
      custom_everforest.inactive.a.fg = "#d8caac"

      lualine.setup({
        options = {
          theme = custom_everforest,
        },
      })
    end,
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
  { "drewtempelmeyer/palenight.vim" },
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
