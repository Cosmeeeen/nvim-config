vim.keymap.set("n", "<leader>pv", ":Neotree filesystem reveal current<CR>")

require('neo-tree').setup({
  hijack_netrw_behavior = "open_current",
  window = {
    position = "current"
  }
})

