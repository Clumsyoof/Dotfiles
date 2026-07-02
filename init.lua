
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set autoindent")
vim.cmd("set number")
vim.cmd("set clipboard=unnamedplus")
vim.cmd("set ttyfast")

vim.g.mapleader=","

require("config.lazy")

vim.g.gruvbox_material_background='hard'
vim.g.gruvbox_material_better_performance=1
vim.cmd("set background=dark")
vim.cmd.colorscheme "gruvbox-material"


local builtin =require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '',
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    always_show_tabline = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
      refresh_time = 16, -- ~60fps
      events = {
        'WinEnter',
        'BufEnter',
        'BufWritePost',
        'SessionLoadPost',
        'FileChangedShellPost',
        'VimResized',
        'Filetype',
        'CursorMoved',
        'CursorMovedI',
        'ModeChanged',
      },
    }
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = {'filename','branch'},
    lualine_c = {'%=',},
    lualine_x = {},
    lualine_y = {'filetype','progress'},
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
},
  inactive_sections = {
    lualine_a = {'filename'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {'location'},
    },  
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- Press <Space> + cp to load the template
vim.keymap.set("n", "<leader>cp", ":0r ~/.config/nvim/snippets/cp_c++/cp.c++<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>perm", ":0r ~/.config/nvim/snippets/cp_c++/perm.c++<CR>", { noremap = true, silent = true })




