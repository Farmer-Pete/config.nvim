return {
  'coder/claudecode.nvim',
  dependencies = { 'folke/snacks.nvim' },
  config = true,
  keys = {
    { '<leader>ac', '<cmd>ClaudeCode<cr>', desc = 'Toggle Claude (float)' },
    { '<C-\\>', '<cmd>ClaudeCode<cr>', mode = { 'n', 't' }, desc = 'Toggle Claude (float)' },
    -- Native terminals, not managed by the plugin (ClaudeCodeSend, ClaudeCodeFocus, etc. won't target them)
    {
      '<leader>aC',
      function()
        local height = math.floor(vim.o.lines * 0.5)
        vim.cmd('botright ' .. height .. 'split | terminal claude')
      end,
      desc = 'Claude (bottom split)',
    },
    {
      '<leader>av',
      function()
        local width = math.floor(vim.o.columns * 0.35)
        vim.cmd('botright ' .. width .. 'vsplit | terminal claude')
      end,
      desc = 'Claude (vsplit)',
    },
    { '<leader>af', '<cmd>ClaudeCodeFocus<cr>', desc = 'Focus Claude' },
    { '<leader>ar', '<cmd>ClaudeCode --resume<cr>', desc = 'Resume Claude' },
    { '<leader>as', '<cmd>ClaudeCodeSend<cr>', mode = 'v', desc = 'Send to Claude' },
    { '<leader>ab', '<cmd>ClaudeCodeAdd %<cr>', desc = 'Add buffer to Claude' },
    { '<leader>aa', '<cmd>ClaudeCodeDiffAccept<cr>', desc = 'Accept diff' },
    { '<leader>ad', '<cmd>ClaudeCodeDiffDeny<cr>', desc = 'Reject diff' },
  },
  opts = {
    terminal = {
      split_side = 'right',
      split_width_percentage = 0.35,
    },
  },
}
