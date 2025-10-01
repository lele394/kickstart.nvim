return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    -- Header (ASCII art)
    dashboard.section.header.val = {
      '      ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
      '      ████╗  ██║██║   ██║██║████╗ ████║',
      '      ██╔██╗ ██║██║   ██║██║██╔████╔██║',
      '      ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      '      ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
      '      ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
    }

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
      dashboard.button('r', '  Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('g', '  Live grep', ':Telescope live_grep<CR>'),
      dashboard.button('c', '  Config', ':e $MYVIMRC | :cd %:p:h <CR>'),
      dashboard.button('q', '  Quit', ':qa<CR>'),
    }

    -- Footer
    dashboard.section.footer.val = '🚀 Ad Astra Per Aspera'

    -- Setup
    alpha.setup(dashboard.config)
  end,
}
