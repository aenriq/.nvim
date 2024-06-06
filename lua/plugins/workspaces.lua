return {
  "natecraddock/workspaces.nvim",
  hooks = {
    open_pre = {

    },
    open = function()

    end,
  },
  config = function()
    require("workspaces").setup()
    vim.api.nvim_create_user_command('Wsa', 'WorkspacesAdd', { nargs = '*' })
    vim.api.nvim_create_user_command('Wso', 'WorkspacesOpen', { nargs = '*' })
  end
}
