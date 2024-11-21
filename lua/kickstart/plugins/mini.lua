return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim

      local indentscope = require 'mini.indentscope'
      indentscope.setup {
        draw = { animation = indentscope.gen_animation.none() },
      }
      vim.cmd.highlight 'link MiniIndentscopeSymbol Comment'

      require('mini.pairs').setup()

      local minijump2d = require 'mini.jump2d'
      minijump2d.setup {
        view = { dim = true },
      }
      vim.keymap.set('n', '<CR>', '<cmd>lua MiniJump2d.start(MiniJump2d.builtin_opts.single_character)<CR>')
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
