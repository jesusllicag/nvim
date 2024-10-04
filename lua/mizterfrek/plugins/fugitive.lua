-- Este plugin permite ejecutar los comandos git
-- También permite ejecutar comandos GIT con keymaps
return {
  "tpope/vim-fugitive",
  cmd = {"G", "Git"},
  keys = {
    {"<leader>ga", ":Git fetch --al -p<cr>", desc = "Git fetch"},
    {"<leader>gl", ":Git pull<cr>", desc = "Git pull"}
  }
}
