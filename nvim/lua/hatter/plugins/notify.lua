return {
  'rcarriga/nvim-notify',
  config = function()
    require('notify').setup({
      top_down = false,
      -- stages = 'fade',
      -- timeout = 5000,
      -- background_colour = '#1e222a',
      -- text_colour = '#abb2bf',
      -- icons = {
      --   ERROR = '',
      --   WARN = '',
      --   INFO = '',
      --   DEBUG = '',
      --   TRACE = '✎',
      -- },
    })
  end,
}
