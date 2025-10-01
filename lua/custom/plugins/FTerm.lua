return {
  'numToStr/FTerm.nvim',
  config = function()
    local FTerm = require 'FTerm'

    FTerm.setup {
      border = 'rounded',
      dimensions = {
        height = 0.9,
        width = 0.9,
      },
      -- don't kill the terminal buffer when closed
      auto_close = false,
    }

    -- function to detect project root
    local function project_root()
      local cwd = vim.fn.getcwd()
      local git_root = vim.fn.systemlist('git rev-parse --show-toplevel')[1]
      if vim.v.shell_error == 0 and git_root ~= '' then
        return git_root
      end
      return cwd
    end

    -- create a terminal instance
    local term = FTerm:new {
      ft = 'FTerm',
      cmd = vim.o.shell,
      cwd = project_root(),
    }

    -- toggle with Alt-i
    vim.keymap.set({ 'n', 't' }, '<A-i>', function()
      term:toggle()
    end, { desc = 'Toggle floating terminal' })
  end,
}
