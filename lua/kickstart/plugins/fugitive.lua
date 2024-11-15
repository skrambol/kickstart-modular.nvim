return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', '<cmd>G<CR><C-w><C-o>', { silent = true, desc = '[G]it [s]tatus' })
      vim.keymap.set('n', '<leader>gl', '<cmd>Git log<CR>', { silent = true, desc = 'git log' })
      vim.keymap.set('n', '<leader>gb', '<cmd>Git blame<CR>', { silent = true, desc = 'git blame' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
