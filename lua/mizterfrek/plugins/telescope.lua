return {
  {
    -- Ref: https://github.com/nvim-telescope/telescope.nvim
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = 'Telescope find files' })
    end
  },
  {
    --Ref: https://github.com/nvim-telescope/telescope-ui-select.nvim
    'nvim-telescope/telescope-ui-select.nvim',
  }
}
