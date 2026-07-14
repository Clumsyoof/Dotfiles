return {
  {
    "Saghen/blink.cmp",
    version = "v0.*",
    dependencies = "rafamadriz/friendly-snippets",
    opts = {
      keymap = { preset = "default" },
      appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono"
    },

    completion = {
      menu = {
        draw = {
          -- We define the width and layout of the columns here
          columns = {
            { "kind_icon", "label", gap = 1 },
            { "label_description" }, -- This column will hold the type info!
          },
          components = {
            -- Optional: Highlight the type gracefully so it doesn't clash with the name
            label_description = {
              text = function(ctx) return ctx.label_description or "" end,
              highlight = "BlinkCmpLabelDescription",
            },
          },
        }
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
      },
    },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
    },
  },

 
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "Saghen/blink.cmp", 
    },
    config = function()
      require("mason").setup()

      require("mason-lspconfig").setup({
        handlers = {
          
          function(server_name)
            require("lspconfig")[server_name].setup({
           
              capabilities = require("blink.cmp").get_lsp_capabilities(),
            })
          end,

          ["clangd"] = function()
            require("lspconfig").clangd.setup({
              capabilities = require("blink.cmp").get_lsp_capabilities(),
              cmd = { "clangd", "--header-insertion=never" },
            })
          end,
        },
      })
    end,
  },
}
