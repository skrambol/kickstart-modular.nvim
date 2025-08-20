return {
  'Konfekt/local-viminfo',
  init = function()
    -- % - remember buffers
    -- n - remember buffers
    vim.opt.shada:append { '%', 'n' }
  end,
}

-- vim: ts=2 sts=2 sw=2 et
