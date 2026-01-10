return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<Right>',
        clear_suggestion = '<Left>',
        accept_word = '<Down>',
      },
    }
  end,
}
