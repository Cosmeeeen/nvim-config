vim.cmd([[
  highlight NeoTreeNormal guibg=none
  highlight NeoTreeNormalNC guibg=none
]])

vim.keymap.set("n", "<leader>pv", ":Neotree filesystem reveal<CR>", { silent = true })

require('neo-tree').setup({
  hijack_netrw_behavior = "open_current",
  window = {
    position = "current"
  }
})

