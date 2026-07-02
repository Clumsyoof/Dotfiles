return {
  "goolord/alpha-nvim",
  dependencies = { 'nvim-mini/mini.icons' },
  -- dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    -- Exact raw braille block text, preserved as-is (density/aspect ratio unchanged)
    dashboard.section.header.val = {
        [[⡏⠀⠀⠀⠀⠀⡴⢁⠔⠉⠀⠀⠀⠈⠙⠪⠻⣤⣄⠀⠀⠀⠀⠀⠙⢄⠙⢆⠀⠀]],
        [[⠃⠀⠀⠀⠀⣰⠁⡎⠀⠀⣴⠀⠀⠀⠀⠀⠀⣴⠑⡕⢆⠀⠀⠀⠀⠈⠳⡈⢱⡀]],
        [[⠀⠀⠀⠀⠀⡇⢸⠀⠀⡴⢸⠀⠀⠀⠀⢠⠎⡌⠀⠈⢢⡑⢄⠀⠀⠀⠀⠘⣬⠘]],
        [[⠀⠀⠀⠀⠀⡇⢸⠀⣰⠁⣘⣀⣀⣀⣠⣃⣼⠁⠀⠀⠀⠙⢌⢣⡀⠀⠀⠰⠛⢢]],
        [[⠀⠀⠀⠀⠀⡇⢸⣠⢓⢁⡿⠛⣋⡭⠽⡟⢯⢭⡆⠀⠀⠀⠈⢢⠑⣀⡠⠀⠃⠠]],
        [[⡀⠀⠀⠀⣀⣧⠸⡇⠁⢸⣷⣞⣹⣷⡀⠙⣎⣣⢵⡄⠀⡤⠊⠉⠀⠀⠀⠀⠀⠸]],
        [[⢣⡤⠖⠊⢹⢸⡄⠇⠀⢸⣿⣿⢟⣼⣯⠉⠉⣹⡻⠁⡜⠀⠀⡔⠉⠉⠉⠀⠀⠀]],
        [[⠘⡇⠀⠈⣈⠜⣬⣺⡄⣀⠙⠳⢿⣿⣿⡄⣔⡿⣄⠀⠑⣄⠘⣇⠀⠀⠀⢀⡠⠀]],
        [[⠀⢿⠛⠉⠁⣀⢽⣡⠿⠝⠋⠀⠀⢌⢿⠛⢿⡎⡪⡿⡱⡹⣆⣈⠓⠖⠊⠁⠠⠶]],
        [[⡀⠈⣆⣴⠾⠊⠉⢹⡀⠀⠀⠀⠀⠈⡞⡗⡏⢛⣿⣻⣻⡇⠈⠙⠛⠛⠒⠚⡀⢆]],
        [[⣧⠀⠸⣷⠀⠀⣠⣿⣿⠻⣟⡿⣄⠀⢹⣿⣯⣯⣼⢋⢽⣿⠀⠀⠀⠀⠀⠀⢠⠸]],
        [[⣿⡆⠀⢹⡀⣴⣿⣿⣿⣷⡙⢿⠟⢢⣼⢿⠁⠀⠈⢲⣿⣿⠀⠀⠀⠀⠀⠀⠘⠀]],
        [[⣿⣿⡄⠀⠳⣿⣿⣿⣿⣿⡷⡄⠡⡈⢟⢼⠀⠀⠀⠀⢳⣿⠀⠀⠀⠀⠀⠀⠀⡆]],
        [[⣿⣿⠿⡄⠀⠻⣿⣿⣿⡿⠁⠘⢆⠘⢜⣾⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⡇]],
        [[⣻⠃⣴⣻⣄⠀⠹⣿⣿⠁⠀⠀⠈⠳⣄⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠁]],
    }

    -- Set color theme highlight group on the section level
    dashboard.section.header.opts.hl = "WarningMsg"

    alpha.setup(dashboard.config)
  end,
}
