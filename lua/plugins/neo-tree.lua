return  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    event_handlers = {
      event = "neo_tree_buffer_enter",
      handler = function()
        vim.opt_local.relativenumber = false
      end,
    },
  },
  config = function()
    vim.keymap.set('n', '<leader>n', ':Neotree<CR>', {})
  end
}

