return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<C-b>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle [H]arpoon menu' })
    vim.keymap.set('n', '<leader>b', function()
      harpoon:list():add()
    end, { desc = 'Add buffer to [h]arpoon' })

    vim.keymap.set('n', '<leader>1', function()
      harpoon:list():select(1)
    end, { desc = 'Go to harpoon index 1' })
    vim.keymap.set('n', '<leader>2', function()
      harpoon:list():select(2)
    end, { desc = 'Go to harpoon index 2' })
    vim.keymap.set('n', '<leader>3', function()
      harpoon:list():select(3)
    end, { desc = 'Go to harpoon index 3' })
    vim.keymap.set('n', '<leader>4', function()
      harpoon:list():select(4)
    end, { desc = 'Go to harpoon index 4' })

    vim.keymap.set('n', 'H', function()
      harpoon:list():prev()
    end, { desc = 'Go to previous harpoon index' })
    vim.keymap.set('n', 'L', function()
      harpoon:list():next()
    end, { desc = 'Go to next harpoon index' })
  end,
}
