return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local nvimtree = require("nvim-tree")

    -- recomended settings from nvim-tree documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    -- change color for arrows in tree to light blue
    vim.cmd([[ highlight NvimTreeIntentMarker guifg=#3FC5FF ]])

    -- nvim-tree Configurations
    nvimtree.setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false
      },
    })

    -- Keymaps
    local keymap = vim.keymap

    keymap.set('n', '<C-b>', "<cmd>NvimTreeToggle<CR>")
  end
}
