return {
  "dhruvasagar/vim-prosession",
  dependencies = {
    "tpope/vim-obsession",
  },
  config = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      command = "Neotree position=left",
    })
  end
}
