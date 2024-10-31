vim.cmd([[
  highlight NeoTreeNormal guibg=none
  highlight NeoTreeNormalNC guibg=none
]])

vim.keymap.set("n", "<leader>pv", ":Neotree filesystem reveal<CR>", { silent = true })

require('neo-tree').setup({
  hijack_netrw_behavior = "open_current",
  window = {
    position = "current"
  },
  filesystem = {
    filtered_items = {
      visible = true, -- when true, they will just be displayed differently than normal items
      hide_dotfiles = true, -- these are left as true in order to be displayed different than non-hidden files
      hide_gitignored = true,
      hide_hidden = true, -- only works on Windows for hidden files/directories
    }
  },
  event_handlers = {
    {
      event = "neo_tree_window_after_open",
      handler = function()
        vim.cmd("setlocal relativenumber")
        vim.cmd("setlocal number")
      end
    }
  }
})
