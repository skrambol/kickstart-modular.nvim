-- TODO: find replacement, probably shada-% per directory/project?
return {
  {
    'EvWilson/spelunk.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require('spelunk').setup {
        enable_persist = true,
        base_mappings = {
          toggle = '<C-h>',
        },
        window_mappings = {
          close = '<Esc>',
        },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
