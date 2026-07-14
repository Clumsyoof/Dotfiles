return {
  -- 1. Disable the default neo-tree
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- 2. Install and configure nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false, -- Load on startup so it can hijack directory buffers
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree (Root Dir)" },
      { "<leader>E", "<cmd>NvimTreeFocus<cr>", desc = "NvimTree Focus" },
    },
    opts = {
      filters = {
        dotfiles = false,
      },
      disable_netrw = true,
      hijack_netrw = true,
      sync_root_with_cwd = true,
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        group_empty = true,
        highlight_opened_files = "all",
      },
    },
    config = function(_, opts)
      require("nvim-tree").setup(opts)
    end,
  },
}
