return { -- open lazygit in a floating window
  'kdheepak/lazygit.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<cr>', { desc = 'Open lazygit' })
  end,
}

