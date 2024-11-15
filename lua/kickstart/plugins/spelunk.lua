return {
  {
    'EvWilson/spelunk.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('spelunk').setup { enable_persist = true }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
