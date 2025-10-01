-- lua/custom/plugins/render-markdown.lua
return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.nvim' },
  opts = {
    enabled = true,
    render_modes = { 'n', 'c', 't' },
    file_types = { 'markdown', 'quarto' },
    latex = { bottom_pad = 1 },
  },
}
