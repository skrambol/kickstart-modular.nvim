return {
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        theme = 'nordfox',
        section_separators = '',
        component_separators = '│',
        icons_enabled = false,
      },
      sections = {
        lualine_b = {
          { 'branch', icons_enabled = true },
          { 'diff', icons_enabled = true },
          { 'diagnostics', icons_enabled = true },
        },
        lualine_c = {
          {
            'filename',
            path = 4,
            shorting_target = 40,
          },
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
