return
{
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  config = function()
    -- Optional configuration type (must be set before loading the colorscheme)
    vim.g.gruvbox_material_background = 'hard' -- 'hard', 'medium', or 'soft'
    vim.g.gruvbox_material_better_performance = 1

    vim.cmd('colorscheme gruvbox-material')
  end,
}
