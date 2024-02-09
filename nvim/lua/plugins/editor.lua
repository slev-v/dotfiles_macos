return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    require("transparent").clear_prefix("NeoTree"),
    opts = {
      window = {
        width = 30,
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
        },
      },
    },
  },
}
