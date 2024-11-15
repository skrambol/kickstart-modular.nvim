return {
  { -- Autoformat
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          local hunks = require('gitsigns').get_hunks()
          if hunks == nil then
            return
          end

          local format = require('conform').format
          for i = #hunks, 1, -1 do
            local hunk = hunks[i]
            if hunk ~= nil and hunk.type ~= 'delete' then
              local start = hunk.added.start
              local last = start + hunk.added.count

              local last_hunk_line = vim.api.nvim_buf_get_lines(0, last - 2, last - 1, true)[1]
              local range = { start = { start, 0 }, ['end'] = { last - 1, last_hunk_line:len() } }

              format { range = range }
            end
          end
        end,
        mode = '',
        desc = '[F]ormat buffer; git hunks only',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local ignore_filetypes = { python = true }
        if ignore_filetypes[vim.bo[bufnr].filetype] then
          return nil
        end

        -- Disable "format_on_save lsp_fallback" for languages that don't
        -- have a well standardized coding style. You can add additional
        -- languages here or re-enable it for the disabled ones.
        local disable_filetypes = { c = true, cpp = true }
        local lsp_format_opt
        if disable_filetypes[vim.bo[bufnr].filetype] then
          lsp_format_opt = 'never'
        else
          lsp_format_opt = 'fallback'
        end
        return {
          timeout_ms = 500,
          lsp_format = lsp_format_opt,
        }
      end,
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        python = { 'isort', 'black' },
        --
        -- You can use 'stop_after_first' to run the first available formatter from the list
        -- javascript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
