return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.rose-pine" },
  { import = "astrocommunity.terminal-integration.vim-tmux-yank" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" }
  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
