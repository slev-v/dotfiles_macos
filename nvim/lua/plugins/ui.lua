return {
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },
  {
    "akinsho/bufferline.nvim",
    require("transparent").clear_prefix("BufferLine"),
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        diagnostics = false,
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    require("transparent").clear_prefix("lualine"),
    opts = function()
      local Util = require("lazyvim.util")
      local lualine_require = require("lualine_require")
      lualine_require.require = require

      local icons = require("config.icons")

      vim.o.laststatus = vim.g.lualine_laststatus

      return {
        options = {
          theme = "auto",
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
          component_separators = "",
          section_separators = "",
        },
        sections = {
          lualine_a = {
            { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            { "filename", file_status = false, path = 4, color = Util.ui.fg("Normal") },
          },
          lualine_b = {
            {
              "diagnostics",
              symbols = {
                error = icons.diagnostics.Error,
                warn = icons.diagnostics.Warn,
                info = icons.diagnostics.Info,
                hint = icons.diagnostics.Hint,
              },
            },
          },

          lualine_c = {},
          lualine_x = {},
          lualine_y = {},
          lualine_z = {
            {
              require("lazy.status").updates,
              cond = require("lazy.status").has_updates,
              color = Util.ui.fg("Special"),
            },
            {
              "diff",
              symbols = {
                added = icons.git.added,
                modified = icons.git.modified,
                removed = icons.git.removed,
              },
              source = function()
                local gitsigns = vim.b.gitsigns_status_dict
                if gitsigns then
                  return {
                    added = gitsigns.added,
                    modified = gitsigns.changed,
                    removed = gitsigns.removed,
                  }
                end
              end,
            },
          },
        },
        extensions = { "neo-tree", "lazy" },
      }
    end,
  },
}
