return {
  { "tpope/vim-dadbod" },
  {
    "kristijanhusak/vim-dadbod-ui",
    init = function()
      vim.g.db_ui_win_position = "right"
      vim.g.db_ui_notification_width = 1
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_winwidth = 35
    end,
  },
  {
    "NachoNievaG/atac.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function()
      require("atac").setup({
        dir = "~/Develop/.atac-files", -- By default, the dir will be set as /tmp/atac
      })
    end,
  },
  -- { "kristijanhusak/vim-dadbod-completion" },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = { "kristijanhusak/vim-dadbod-completion" },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     table.insert(opts.sources, { name = "vim-dadbod-completion" })
  --   end,
  -- },
}
